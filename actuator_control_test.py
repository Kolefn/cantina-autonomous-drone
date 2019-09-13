#!/usr/bin/env python
import time
import rospy
from mav_msgs.msg import Actuators
import os


class ActuatorControlTest():
    POSITIVE_LIFT_VEL = 500
    NEUTRAL_LIFT_VEL = 450
    NEGATIVE_LIFT_VEL = NEUTRAL_LIFT_VEL - (POSITIVE_LIFT_VEL - NEUTRAL_LIFT_VEL)
    NEUTRAL_TILT_VEL = NEUTRAL_LIFT_VEL+1
    def __init__(self,
                 ):

        self.message_pub = rospy.Publisher("/hummingbird/command/motor_speed", Actuators, queue_size=3)
        self.actuator_control_message = Actuators()
    
    def setAngularVelocities(self, inputs):
        self.actuator_control_message.angular_velocities = inputs
        self.message_pub.publish(self.actuator_control_message)

    def up(self):
        inputs = [POSITIVE_LIFT_VEL, POSITIVE_LIFT_VEL, POSITIVE_LIFT_VEL, POSITIVE_LIFT_VEL]
        self.setAngularVelocities(inputs);

    def hover(self):
        inputs = [NEUTRAL_LIFT_VEL, NEUTRAL_LIFT_VEL, NEUTRAL_LIFT_VEL, NEUTRAL_LIFT_VEL]
        self.setAngularVelocities(inputs);
    
    def down(self):
        inputs = [NEGATIVE_LIFT_VEL, NEGATIVE_LIFT_VEL, NEGATIVE_LIFT_VEL, NEGATIVE_LIFT_VEL]
        self.setAngularVelocities(inputs);

    def left(self):
        inputs = [NEUTRAL_TILT_VEL,NEUTRAL_TILT_VEL, NEUTRAL_LIFT_VEL,NEUTRAL_LIFT_VEL]
        self.setAngularVelocities(inputs);
    
    def right(self):
        inputs = [NEUTRAL_TILT_VEL,NEUTRAL_TILT_VEL,NEUTRAL_LIFT_VEL,NEUTRAL_LIFT_VEL]
        self.setAngularVelocities(inputs);

    def run(self):

        while self.message_pub.get_num_connections() == 0:
            rospy.loginfo("Waiting for subscriber to connect")
            rospy.sleep(1)
        
        while True:
            self.up()
            rospy.sleep(1)
            self.hover()
            rospy.sleep(1)
            self.left()
            rospy.sleep(1)
            self.right()
            rospy.sleep(1)
            self.down()
            rospy.sleep(2)



if __name__ == '__main__':
    rospy.init_node('actuator_control_test', anonymous = True)
    act = ActuatorControlTest()
    act.run()
