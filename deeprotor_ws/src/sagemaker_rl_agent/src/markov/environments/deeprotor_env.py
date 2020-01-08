from __future__ import print_function

import bisect
import boto3
import json
import logging
import math
import os
import time
import traceback
import sys
from collections import OrderedDict
import threading
import datetime

import gym
import queue
import numpy as np
from gym import spaces
from PIL import Image
from markov import utils

logger = utils.Logger(__name__, logging.INFO).get_logger()

# Type of worker
SIMULATION_WORKER = "SIMULATION_WORKER"
SAGEMAKER_TRAINING_WORKER = "SAGEMAKER_TRAINING_WORKER"

node_type = os.environ.get("NODE_TYPE", SIMULATION_WORKER)
if node_type == SIMULATION_WORKER:
    import rospy
    from std_msgs.msg import Float64
    from gazebo_msgs.msg import ModelState
    from gazebo_msgs.srv import GetLinkState, GetModelState
    from scipy.spatial.transform import Rotation
    from sensor_msgs.msg import Image as sensor_image
    from deeprotor_simulation_environment.srv import ResetDroneSrv
    from markov.s3_simdata_upload import DeepRotorSimTraceData
    from mav_msgs.msg import Actuators

# Type of job
TRAINING_JOB = 'TRAINING'
EVALUATION_JOB = 'EVALUATION'

# Dimensions of the input training image
TRAINING_IMAGE_SIZE = (160, 120)

# Normalized distance to move with each reset
ROUND_ROBIN_ADVANCE_DIST = 0.01

# Reward to give the drone when it "crashes"
CRASHED_REWARD = 1e-8

# Size of the image queue buffer, we want this to be one so that we consume 1 image
# at a time, but may want to change this as we add more algorithms
IMG_QUEUE_BUF_SIZE = 1

# The number of steps to wait before checking if the drone is stuck
# This number should corespond to the camera FPS, since it is pacing the
# step rate.
NUM_STEPS_TO_CHECK_STUCK = 15

MAX_NUM_STEPS_PER_JOB = 1000

#Defines to upload SIM_TRACE data in S3
TRAINING_SIMTRACE_DATA_S3_OBJECT_KEY = "sim_inference_logs/TrainingSimTraceData.csv"
EVALUATION_SIMTRACE_DATA_S3_OBJECT_KEY = "sim_inference_logs/EvaluationSimTraceData.csv"
SIMAPP_DATA_UPLOAD_TIME_TO_S3 = 60 #in seconds
simapp_data_upload_timer = None

POSITIVE_LIFT_VEL = 500
NEGATIVE_LIFT_VEL = -POSITIVE_LIFT_VEL

NO_LIFT = [0,0,0,0]

ALL_NEGATIVE_LIFT = [NEGATIVE_LIFT_VEL,NEGATIVE_LIFT_VEL,NEGATIVE_LIFT_VEL,NEGATIVE_LIFT_VEL]

ALL_POSITIVE_LIFT = [POSITIVE_LIFT_VEL,POSITIVE_LIFT_VEL,POSITIVE_LIFT_VEL,POSITIVE_LIFT_VEL]

R1_POSITIVE_LIFT = [POSITIVE_LIFT_VEL,0,0,0]
R2_POSITIVE_LIFT = [0,POSITIVE_LIFT_VEL,0,0]
R3_POSITIVE_LIFT = [0,0,POSITIVE_LIFT_VEL,0]
R4_POSITIVE_LIFT = [0,0,0,POSITIVE_LIFT_VEL]

R1_NEGATIVE_LIFT = [NEGATIVE_LIFT_VEL,0,0,0]
R2_NEGATIVE_LIFT = [0,NEGATIVE_LIFT_VEL,0,0]
R3_NEGATIVE_LIFT = [0,0,NEGATIVE_LIFT_VEL,0]
R4_NEGATIVE_LIFT = [0,0,0,NEGATIVE_LIFT_VEL]

VELOCITY_CHOICES = [
    NO_LIFT,
    #  ALL_NEGATIVE_LIFT, 
    ALL_POSITIVE_LIFT, 
    R1_POSITIVE_LIFT, 
    R2_POSITIVE_LIFT, 
    R3_POSITIVE_LIFT, 
    R4_POSITIVE_LIFT,
    # R1_NEGATIVE_LIFT,
    # R2_NEGATIVE_LIFT,
    # R3_NEGATIVE_LIFT,
    # R4_NEGATIVE_LIFT
]

def simapp_shutdown():
    #This function is called on simapp exit. This is called on:
    #  -robomaker expiry shutdown
    #  -an unexpected exception in the simapp leading to system exit.
    #  -cancel_simulation_job
    #  -simulation data upload timer expiry
    logger.info("deeprotor_env - Shutdown simapp, close the running processes.")
    stack_trace = traceback.format_exc()
    logger.info ("deeprotor_env - callstack={}".format(stack_trace))
    if node_type == SIMULATION_WORKER:
        simtrace_data = DeepRotorSimTraceData.getInstance()
        simtrace_data.complete_upload_to_s3()

def simapp_data_upload_timer_expiry():
    logger.info("deeprotor_env - simapp_data_upload timer expired")
    simapp_data_upload_timer.cancel()
    simapp_shutdown()

### Gym Env ###
class DeepRotorEnv(gym.Env):

    def __init__(self):

        # Create the observation space
        self.observation_space = spaces.Box(low=0, high=255,
                                            shape=(TRAINING_IMAGE_SIZE[1], TRAINING_IMAGE_SIZE[0], 3),
                                            dtype=np.uint8)
        # Create the action space
        #self.action_space = spaces.Box(low=np.array([-1, -1, -1, -1]), high=np.array([+1, +1, +1, +1]), dtype=np.float32)
        self.action_space =  spaces.Discrete(len(VELOCITY_CHOICES))

        if node_type == SIMULATION_WORKER:

            # ROS initialization
            rospy.init_node('rl_coach', anonymous=True)

            # wait for required services
            rospy.wait_for_service('/deeprotor_simulation_environment/reset_drone')
            rospy.wait_for_service('/gazebo/get_model_state')
            rospy.wait_for_service('/gazebo/get_link_state')

            self.get_model_state = rospy.ServiceProxy('/gazebo/get_model_state', GetModelState)
    
            self.reset_drone_client = rospy.ServiceProxy('/deeprotor_simulation_environment/reset_drone',
                                                       ResetDroneSrv)
                                        
            self.get_link_state = rospy.ServiceProxy('/gazebo/get_link_state', GetLinkState)


            self.velocity_pub = rospy.Publisher("/drone/command/motor_speed", Actuators, queue_size=1)

            # Read in parameters
            self.job_type = rospy.get_param('JOB_TYPE')
            self.aws_region = rospy.get_param('AWS_REGION')
            self.metrics_s3_bucket = rospy.get_param('METRICS_S3_BUCKET')
            self.metrics_s3_object_key = rospy.get_param('METRICS_S3_OBJECT_KEY')
            self.metrics = []
            self.simulation_job_arn = 'arn:aws:robomaker:' + self.aws_region + ':' + \
                                      rospy.get_param('ROBOMAKER_SIMULATION_JOB_ACCOUNT_ID') + \
                                      ':simulation-job/' + rospy.get_param('AWS_ROBOMAKER_SIMULATION_JOB_ID')

            # Setup SIM_TRACE_LOG data upload to s3
            self.setup_simtrace_data_upload_to_s3()

            if self.job_type == TRAINING_JOB:
                # from custom_files.customer_reward_function import reward_function
                from markov.defaults import reward_function
                self.reward_function = reward_function
                self.target_number_of_episodes = rospy.get_param('NUMBER_OF_EPISODES')
                self.target_reward_score = rospy.get_param('TARGET_REWARD_SCORE')
            else:
                from markov.defaults import reward_function
                self.reward_function = reward_function
                self.number_of_trials = 0
                self.target_number_of_trials = rospy.get_param('NUMBER_OF_TRIALS')

            # Queue used to maintain image consumption synchronicity
            self.image_queue = queue.Queue(IMG_QUEUE_BUF_SIZE)
            
            rospy.Subscriber('/drone/camera/zed/rgb/image_rect_color', sensor_image, self.callback_image)

            # [print(topic_description[0]) for topic_description in rospy.get_published_topics()]

            # Initialize state data
            self.episodes = 0
            self.start_x = 0.0
            self.start_y = 0.0
            self.start_z = 0.0
            self.change_start = rospy.get_param('CHANGE_START_POSITION', (self.job_type == TRAINING_JOB))
            self.is_simulation_done = False
            self.velocities = [0,0,0,0]
            self.action_taken = 0
            self.next_state = None
            self.reward = None
            self.reward_in_episode = 0
            self.done = False
            self.steps = 0
            self.simulation_start_time = 0
            self.allow_servo_step_signals = False

    def setup_simtrace_data_upload_to_s3(self):
        if node_type == SIMULATION_WORKER:
            #start timer to upload SIM_TRACE data to s3 when simapp exits
            #There is not enough time to upload data to S3 when robomaker shuts down
            #Set up timer to upload data to S3 300 seconds before the robomaker quits
            # - 300 seocnds is randomly chosen number based on various jobs launched that
            #   provides enough time to upload data to S3
            global simapp_data_upload_timer
            session = boto3.session.Session()
            robomaker_client = session.client('robomaker', region_name=self.aws_region)
            result = robomaker_client.describe_simulation_job(
                job=self.simulation_job_arn
            )
            logger.info("robomaker job description: {}".format(result))
            self.simapp_upload_duration = result['maxJobDurationInSeconds'] - SIMAPP_DATA_UPLOAD_TIME_TO_S3
            start = 0
            if self.job_type == TRAINING_JOB:
                logger.info("simapp training job started_at={}".format(result['lastStartedAt']))
                start = result['lastStartedAt']
                self.simtrace_s3_bucket = rospy.get_param('SAGEMAKER_SHARED_S3_BUCKET')
                self.simtrace_s3_key = os.path.join(rospy.get_param('SAGEMAKER_SHARED_S3_PREFIX'), TRAINING_SIMTRACE_DATA_S3_OBJECT_KEY)
            else:
                logger.info("simapp evaluation job started_at={}".format(result['lastUpdatedAt']))
                start = result['lastUpdatedAt']
                self.simtrace_s3_bucket = rospy.get_param('MODEL_S3_BUCKET')
                self.simtrace_s3_key = os.path.join(rospy.get_param('MODEL_S3_PREFIX'), EVALUATION_SIMTRACE_DATA_S3_OBJECT_KEY)
            end = start + datetime.timedelta(seconds=self.simapp_upload_duration)
            now = datetime.datetime.now(tz=end.tzinfo) # use tzinfo as robomaker
            self.simapp_data_upload_time = (end - now).total_seconds()
            logger.info("simapp job started_at={} now={} end={} upload_data_in={} sec".format(start, now, end, self.simapp_data_upload_time))
            simapp_data_upload_timer = threading.Timer(self.simapp_data_upload_time, simapp_data_upload_timer_expiry)
            simapp_data_upload_timer.daemon = True
            simapp_data_upload_timer.start()
            logger.info("Timer with {} seconds is {}".format(self.simapp_data_upload_time, simapp_data_upload_timer.is_alive()))

            #setup to upload SIM_TRACE_DATA to S3
            self.simtrace_data = DeepRotorSimTraceData(self.simtrace_s3_bucket, self.simtrace_s3_key)

    def reset(self):
        logger.info ("reset")
        if node_type == SAGEMAKER_TRAINING_WORKER:
            return self.observation_space.sample()

        # Simulation is done - so RoboMaker will start to shut down the app.
        # Till RoboMaker shuts down the app, do nothing more else metrics may show unexpected data.
        if (node_type == SIMULATION_WORKER) and self.is_simulation_done:
            while True:
                time.sleep(1)

        self.velocities = [0,0,0,0]
        self.previous_position = [0,0,0]
        self.action_taken = 0
        self.next_state = None
        self.reward = None
        self.reward_in_episode = 0
        self.done = False
        # Reset the drone and record the simulation start time
        if self.allow_servo_step_signals:
            self.send_action(self.action_taken)

        self.drone_reset()
        self.steps = 0
        self.simulation_start_time = time.time()
        self.infer_reward_state(self.action_taken)

        return self.next_state

    def set_next_state(self):
        logger.info ("set_next_state")
        # Make sure the first image is the starting image
        image_data = self.image_queue.get(block=True, timeout=None)
        # Read the image and resize to get the state
        image = Image.frombytes('RGB', (image_data.width, image_data.height), image_data.data, 'raw', 'RGB', 0, 1)
        image = image.resize(TRAINING_IMAGE_SIZE, resample=2)
        self.next_state = np.array(image)

    def drone_reset(self):
        logger.info ("drone_reset")
        try:
            self.reset_drone_client(self.start_x, self.start_y, self.start_z)
            # First clear the queue so that we set the state to the start image
            _ = self.image_queue.get(block=True, timeout=None)
            self.set_next_state()

        except Exception as ex:
            utils.json_format_logger("Unable to reset the drone: {}".format(ex),
                         **utils.build_system_error_dict(utils.SIMAPP_ENVIRONMENT_EXCEPTION,
                                                         utils.SIMAPP_EVENT_ERROR_CODE_500))

    def set_allow_servo_step_signals(self, allow_servo_step_signals):
        self.allow_servo_step_signals = allow_servo_step_signals

    def step(self, action):
        if node_type == SAGEMAKER_TRAINING_WORKER:
            return self.observation_space.sample(), 0, False, {}

        # Initialize next state, reward, done flag
        self.next_state = None
        self.reward = None
        self.done = False

        # Send this action to Gazebo and increment the step count
        self.velocities = VELOCITY_CHOICES[action]
        if self.allow_servo_step_signals:
            self.send_action(self.velocities)
        self.steps += 1

        # Compute the next state and reward
        self.infer_reward_state(self.velocities)
        return self.next_state, self.reward, self.done, {}

    def callback_image(self, data):
        try:
            self.image_queue.put_nowait(data)
        except queue.Full:
            pass
        except Exception as ex:
            utils.json_format_logger("Error retrieving frame from gazebo: {}".format(ex),
                       **utils.build_system_error_dict(utils.SIMAPP_ENVIRONMENT_EXCEPTION, utils.SIMAPP_EVENT_ERROR_CODE_500))

    def send_action(self, action):
        msg = Actuators()
        msg.angular_velocities = VELOCITY_CHOICES[action]
        self.velocity_pub.publish(msg)

    def infer_reward_state(self, velocities):
        logger.info ("infer_reward_state")
        try:
            self.set_next_state()
        except Exception as ex:
            utils.json_format_logger("Unable to retrieve image from queue: {}".format(ex),
                       **utils.build_system_error_dict(utils.SIMAPP_ENVIRONMENT_EXCEPTION, utils.SIMAPP_EVENT_ERROR_CODE_500))

        # Read model state from Gazebo
        model_state = self.get_model_state('drone', '')
        model_orientation = Rotation.from_quat([
            model_state.pose.orientation.x,
            model_state.pose.orientation.y,
            model_state.pose.orientation.z,
            model_state.pose.orientation.w]).as_euler('zyx')

        model_x = model_state.pose.position.x
        model_y = model_state.pose.position.y
        model_z = model_state.pose.position.z

        rotor_state_1 = self.get_link_state('drone::rotor_0', '')
        rotor_state_2 = self.get_link_state('drone::rotor_1', '')
        rotor_state_3 = self.get_link_state('drone::rotor_2', '')
        rotor_state_4 = self.get_link_state('drone::rotor_3', '')
        
        model_crashed = model_y < 0 or  rotor_state_1.link_state.pose.position.y <= 0 or \
                                        rotor_state_2.link_state.pose.position.y <= 0 or \
                                        rotor_state_3.link_state.pose.position.y <= 0 or \
                                        rotor_state_4.link_state.pose.position.y <= 0

        # Compute the reward
        reward = 0.0
        if not model_crashed:
            logger.info ("model_not_crashed")
            done = False
            target_state = self.get_model_state('target', '')
            params = {
                'x': model_x,
                'y': model_y,
                'z': model_z,
                'pitch': model_orientation[0],
                'yaw': model_orientation[1],
                'roll': model_orientation[2],
                'target_x': target_state.pose.position.x,
                'target_y': target_state.pose.position.y,
                'target_z': target_state.pose.position.z,
                'steps': self.steps,
            }
            try:
                reward = float(self.reward_function(params))
            except Exception as e:
                utils.json_format_logger("Error in the reward function: {}".format(e),
                                         **utils.build_user_error_dict(utils.SIMAPP_SIMULATION_WORKER_EXCEPTION,
                                                                       utils.SIMAPP_EVENT_ERROR_CODE_400))
                traceback.print_exc()
                utils.simapp_exit_gracefully()
        else:
            logger.info ("model_crashed")
            done = True
            reward = CRASHED_REWARD

        # Reset if the drone position hasn't changed in the last 2 steps
        prev_pos_dist = (model_x - self.previous_position[0]) + (model_y - self.previous_position[1]) + (model_z - self.previous_position[2])

        if prev_pos_dist <= 0.0001 and self.steps % NUM_STEPS_TO_CHECK_STUCK == 0:
            done = True
            reward = CRASHED_REWARD  # stuck

        # Simulation jobs are done when max steps reached
        if self.steps >= MAX_NUM_STEPS_PER_JOB:
            done = True

        self.previous_position = [model_x, model_y, model_z]

        # Set the reward and done flag
        self.reward = reward
        self.reward_in_episode += reward
        self.done = done

        # Trace logs to help us debug and visualize the training runs
        # btown TODO: This should be written to S3, not to CWL.
        logger.info('SIM_TRACE_LOG:{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{}\n'.format(
            self.episodes, 
            self.steps, 
            model_x, 
            model_y, 
            model_z,
            model_orientation[0],
            model_orientation[1],
            model_orientation[2],
            velocities[0],
            velocities[1],
            velocities[2],
            velocities[3],
            self.action_taken,
            self.reward,
            self.done,
            time.time()))

        #build json record of the reward metrics
        reward_metrics = OrderedDict()
        reward_metrics['episode'] = self.episodes
        reward_metrics['steps'] = self.steps
        reward_metrics['X'] = model_x
        reward_metrics['Y'] = model_y
        reward_metrics['Z'] = model_z
        reward_metrics['pitch'] = model_orientation[0]
        reward_metrics['yaw'] = model_orientation[1]
        reward_metrics['roll'] = model_orientation[2]
        reward_metrics['velocity_rotor_1'] = velocities[0]
        reward_metrics['velocity_rotor_2'] = velocities[1]
        reward_metrics['velocity_rotor_3'] = velocities[2]
        reward_metrics['velocity_rotor_4'] = velocities[3]
        reward_metrics['action'] = self.action_taken
        reward_metrics['reward'] = self.reward
        reward_metrics['done'] = self.done
        reward_metrics['tstamp'] = time.time()
        self.simtrace_data.write_simtrace_data(reward_metrics)

        # Terminate this episode when ready
        if done and node_type == SIMULATION_WORKER:
            self.finish_episode(reward)

    def stop_drone(self):
        logger.info ("stop_drone")
        self.action_taken = 0
        self.velocities = VELOCITY_CHOICES[self.action_taken]
        self.send_action(self.velocities)
        self.drone_reset()

    def finish_episode(self, reward):
        logger.info ("finish_episode")
        # Increment episode count, update start position
        self.episodes += 1
        if self.change_start:
            # move drone progressively side to side, up and down, back and forth
            self.start_x = math.cos((self.start_x + ROUND_ROBIN_ADVANCE_DIST) % 1.0)
            self.start_y = start_y #(self.start_y + ROUND_ROBIN_ADVANCE_DIST) % 1.0
            self.start_z = math.sin((self.start_z + ROUND_ROBIN_ADVANCE_DIST) % 1.0)
        # Reset the drone
        self.stop_drone()

        # upload SIM_TRACE data to S3
        self.simtrace_data.upload_to_s3(self.episodes)

        # Update metrics based on job type
        if self.job_type == TRAINING_JOB:
            self.update_training_metrics(reward)
            self.write_metrics_to_s3()
            if self.is_training_done():
                self.cancel_simulation_job()
        elif self.job_type == EVALUATION_JOB:
            self.number_of_trials += 1
            self.update_eval_metrics(reward)
            self.write_metrics_to_s3()

    def update_eval_metrics(self, reward):
        eval_metric = {}
        eval_metric['target_track_accuracy'] = int(reward * 100)
        eval_metric['metric_time'] = int(round(time.time() * 1000))
        eval_metric['start_time'] = int(round(self.simulation_start_time * 1000))
        eval_metric['elapsed_time_in_milliseconds'] = int(round((time.time() - self.simulation_start_time) * 1000))
        eval_metric['trial'] = int(self.number_of_trials)
        self.metrics.append(eval_metric)

    def update_training_metrics(self, reward):
        training_metric = {}
        training_metric['reward_score'] = int(round(self.reward_in_episode))
        training_metric['metric_time'] = int(round(time.time() * 1000))
        training_metric['start_time'] = int(round(self.simulation_start_time * 1000))
        training_metric['elapsed_time_in_milliseconds'] = int(round((time.time() - self.simulation_start_time) * 1000))
        training_metric['episode'] = int(self.episodes)
        training_metric['target_track_accuracy'] = int(reward * 100)
        self.metrics.append(training_metric)

    def write_metrics_to_s3(self):
        session = boto3.session.Session()
        s3_client = session.client('s3', region_name=self.aws_region)
        metrics_body = json.dumps({'metrics': self.metrics})
        s3_client.put_object(
            Bucket=self.metrics_s3_bucket,
            Key=self.metrics_s3_object_key,
            Body=bytes(metrics_body, encoding='utf-8')
        )

    def is_training_done(self):
        if ((self.target_number_of_episodes > 0) and (self.target_number_of_episodes == self.episodes)) or \
           ((isinstance(self.target_reward_score, (int, float))) and (self.target_reward_score <= self.reward_in_episode)):
            self.is_simulation_done = True
        return self.is_simulation_done

    def cancel_simulation_job(self):
        logger.info ("cancel_simulation_job: make sure to shutdown simapp first")
        simapp_shutdown()

        session = boto3.session.Session()
        robomaker_client = session.client('robomaker', region_name=self.aws_region)
        robomaker_client.cancel_simulation_job(
            job=self.simulation_job_arn
        )
