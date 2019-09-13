#!/usr/bin/env python
import time
import rospy
from mav_msgs.msg import Actuators
import os



class ActuatorControlTest():

    def __init__(self,
                 ):

        self.message_pub = rospy.Publisher("/firefly/command/motor_speed", Actuators, queue_size=1)
        self.actuator_control_message = Actuators()

    def run(self):


        inputs = [0, 0, 0, 0, 0, 0]

        # self.actuator_control_message.angular_velocities = inputs
        # self.message_pub.publish(self.actuator_control_message)
        os.system("rostopic pub --once /firefly/command/motor_speed mav_msgs/Actuators '{angular_velocities: [0, 0, 0, 1000, 0, 1000]}'")
        time.sleep(10)



if __name__ == '__main__':
    rospy.init_node('actuator_control_test', anonymous = True)
    act = ActuatorControlTest()
    act.run()
