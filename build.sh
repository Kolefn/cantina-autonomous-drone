# Build the workspace
cd deeprotor_ws/
colcon build
cd ..

# Setup for bundling & running
sudo rosdep init
rosdep update
echo "source deeprotor_ws/install/local_setup.bash" >> ~/.bashrc
echo "source /opt/ros/kinetic/setup.bash" >> ~/.bashrc
source ~/.bashrc