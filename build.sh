# Build the workspace
cd deeprotor_ws/
colcon build
cd ..


echo "source deeprotor_ws/install/local_setup.bash" >> ~/.bashrc
echo "source /opt/ros/kinetic/setup.bash" >> ~/.bashrc
source ~/.bashrc