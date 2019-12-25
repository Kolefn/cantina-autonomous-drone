# Build the workspace
colcon build --build-base deeprotor_ws/

# Setup for bundling & running
sudo rosdep init
rosdep update
echo "source deeprotor_ws/install/local_setup.bash" >> ~/.bashrc
echo "source /opt/ros/kinetic/setup.bash" >> ~/.bashrc
source ~/.bashrc