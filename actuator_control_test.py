import rospy
from mav_msgs.msgs import Actuator


class ActuatorControlTest():

    def __init__(self,
                 ):

        self.message_pub = rospy.Publisher("/firefly/command/motor_speed", Actuator, queue_size=1)
        self.actuator_control_message = Actuator()

    def run(self):


        inputs = [100, 100, 100, 100, 100, 100]

        self.actuator_control_message.angular_velocities = inputs
        self.message_pub.publish(self.actuator_control_message)


if __name__ == '__main__':
    rospy.init_node('actuator_control_test')
    act = ActuatorControlTest()
    act.run()
