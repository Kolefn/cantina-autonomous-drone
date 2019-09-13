#!/usr/bin/env python
import time
import rospy
from mav_msgs.msg import Actuators
import os



class ActuatorControlTest():

    def __init__(self,
                 ):

        self.message_pub = rospy.Publisher("/hummingbird/command/motor_speed", Actuators, queue_size=3)
        self.actuator_control_message = Actuators()
    
    def setAngularVelocities(self, inputs):
        self.actuator_control_message.angular_velocities = inputs
        self.message_pub.publish(self.actuator_control_message)

    def up(self):
        inputs = [500, 500, 500, 500]
        self.setAngularVelocities(inputs);
    
    def down(self):
        inputs = [100, 100, 100, 100]
        self.setAngularVelocities(inputs);

    def run(self):

        while self.message_pub.get_num_connections() == 0:
            rospy.loginfo("Waiting for subscriber to connect")
            rospy.sleep(1)
        
        while True:
            self.up()
            rospy.sleep(2)
            self.down()
            rospy.sleep(2)



if __name__ == '__main__':
    rospy.init_node('actuator_control_test', anonymous = True)
    act = ActuatorControlTest()
    act.run()
