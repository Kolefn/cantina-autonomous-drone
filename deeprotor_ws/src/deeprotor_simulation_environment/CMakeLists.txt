cmake_minimum_required(VERSION 2.8.3)
project(deeprotor_simulation_environment)

find_package(catkin REQUIRED gazebo_ros std_msgs message_generation)
find_package(catkin REQUIRED COMPONENTS mav_msgs)
find_package(AWSSDK REQUIRED COMPONENTS kinesis logs)

add_dependencies(${PROJECT_NAME} ${catkin_EXPORTED_TARGETS})
add_dependencies(mav_msgs ${catkin_EXPORTED_TARGETS})

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
    CATKIN_DEPENDS gazebo_ros std_msgs controller_manager gazebo_ros_control gazebo_plugins h264_video_encoder h264_encoder_core kinesis_video_streamer robot_state_publisher ros_controllers ros_control std_msgs message_runtime python-scipy python-numpy rotors_simulator rotors_gazebo 
)

include_directories(include ${catkin_INCLUDE_DIRS})

install(PROGRAMS
    scripts/drone_node.py
    scripts/rotation.py
    scripts/run_local_rl_agent.sh
    scripts/run_rollout_rl_agent.sh
    scripts/run_evaluation_rl_agent.sh
    scripts/only_sleep.sh
    DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)

foreach(dir config launch models srv urdf worlds)
    install(DIRECTORY ${dir}/
        DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}/${dir})
endforeach(dir)