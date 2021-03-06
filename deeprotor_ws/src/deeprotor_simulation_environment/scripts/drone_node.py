#!/usr/bin/env python
##############################################################
#                                                            #
#   Copyright 2019 Amazon.com, Inc. or its affiliates.       #
#   All Rights Reserved.                                     #
#                                                            #
#                                                            #
#   Adapted by Kole Nunley of Cantina Consulting, LLC 2019   #
##############################################################

'''This module will launch a ROS node that will have services for resetting the drone. 
    It should serve as an interface into gazebo related operations required at start up
'''
import os
import sys
import math
import time

import rospy
import numpy as np

# from deepracer_simulation_environment.srv import GetWaypointSrvResponse, GetWaypointSrv
from deeprotor_simulation_environment.srv import ResetDroneSrv, ResetDroneSrvResponse

from gazebo_msgs.srv import SetModelState, GetModelState
from gazebo_msgs.msg import ModelState
from rotation import Rotation

RESET_DRONE_SRV_NAME = '/deeprotor_simulation_environment/reset_drone'
# The environment variable that specifies the bundle prefix
BUNDLE_KEY = "BUNDLE_CURRENT_PREFIX"
# Amount of time (in seconds) to wait, in order to prevent model state from
# spamming logs while the model is loading
WAIT_TO_PREVENT_SPAM = 2

class DeepRotor(object):
    def __init__(self):
        ''' Constructor for the Deep Rotor object
        '''
        # Wait for required services to be available
        rospy.wait_for_service('/gazebo/set_model_state')
        rospy.wait_for_service('/gazebo/get_model_state')
        # We have no guarantees as to when gazebo will load the model, therefore we need
        # to wait until the model is loaded prior to resetting it for the first time
        get_model_client = rospy.ServiceProxy('/gazebo/get_model_state', GetModelState)
        wait_for_model = True
        while wait_for_model:
            # If the model is not loaded the get model service will log an error
            # Therefore, we add an timer to prevent the log from getting spammed with
            # errors
            time.sleep(WAIT_TO_PREVENT_SPAM)
            self.model = get_model_client('drone', '')
            wait_for_model = not self.model.success
        
        self.starting_pose = self.model.pose 
        self.starting_twist = self.model.twist

        self.resetdrone_service = rospy.Service(RESET_DRONE_SRV_NAME, ResetDroneSrv,
                                              self.handle_reset_drone)
        # Gazebo service that allows us to position the drone
        self.model_state_client = rospy.ServiceProxy('/gazebo/set_model_state', SetModelState)
        # Place the drone at the starting point facing the forward direction
        self.reset_drone(0, 0, 0)

    def reset_drone(self, x, y, z):
        ''' Reset's the drone
        '''

        # Construct the model state and send to Gazebo
        model_state = ModelState()
        model_state.model_name = 'drone'
        model_state.pose = self.starting_pose
        model_state.pose.position.x = x
        model_state.pose.position.y = y
        model_state.pose.position.z = z
        model_state.twist = self.starting_twist
        self.model_state_client(model_state)

    def handle_reset_drone(self, req):
        '''Request handler for resetting the drone
           req - Request from the client, should contain x,y,z
        '''
        self.reset_drone(req.x, req.y, req.z)
        return ResetDroneSrvResponse(1)

if __name__ == '__main__':
    rospy.init_node('drone_reset_node', anonymous=True)
    DEEPROTOR = DeepRotor()
    rospy.spin()
