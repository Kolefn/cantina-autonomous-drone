cmake_minimum_required(VERSION 2.8.3)
project(deeprotor_simulation_environment)

find_package(catkin REQUIRED gazebo_ros std_msgs message_generation gazebo_ros_control gazebo_plugins h264_video_encoder h264_encoder_core kinesis_video_streamer robot_state_publisher std_msgs message_runtime rotors_gazebo)
find_package(AWSSDK REQUIRED COMPONENTS kinesis logs)

add_service_files(
    DIRECTORY srv
    FILES
    ResetDroneSrv.srv
)

generate_messages(
   DEPENDENCIES
   std_msgs 
)

catkin_package(
    INCLUDE_DIRS include
    CATKIN_DEPENDS gazebo_ros std_msgs controller_manager gazebo_ros_control gazebo_plugins h264_video_encoder h264_encoder_core kinesis_video_streamer robot_state_publisher ros_controllers ros_control std_msgs message_runtime python-shapely python-scipy python-numpy rotors_simulator rotors_gazebo 
)

include_directories(include ${catkin_INCLUDE_DIRS})

foreach(dir config launch models srv urdf worlds)
    install(DIRECTORY ${dir}/
        DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}/${dir})
endforeach(dir)

install(DIRECTORY src DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}/deeprotor_simulation_environment)