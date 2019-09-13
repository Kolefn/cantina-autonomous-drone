#!/usr/bin/env python
import time
import rospy
from mav_msgs.msg import Actuators
import os



class ActuatorControlTest():

    def __init__(self,
                 ):

        self.message_pub = rospy.Publisher("/firefly/command/motor_speed", Actuators, queue_size=3)
        self.actuator_control_message = Actuators()

    def run(self):

            while self.message_pub.get_num_connections() == 0:
                rospy.loginfo("Waiting for subscriber to connect")
                rospy.sleep(1)
            while True:
                inputs = [500, 500, 500, 0, 0, 0]

                self.actuator_control_message.angular_velocities = inputs
                self.message_pub.publish(self.actuator_control_message)
                rospy.sleep(1)



if __name__ == '__main__':
    rospy.init_node('actuator_control_test', anonymous = True)
    act = ActuatorControlTest()
    act.run()
