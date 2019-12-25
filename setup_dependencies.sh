# download and setup rotors_simulator dependencies
wstool init deeprotor_ws/src/
wget -O deeprotor_ws/src/rotors_hil.rosinstall https://raw.githubusercontent.com/ethz-asl/rotors_simulator/master/rotors_hil.rosinstall
wstool merge -t deeprotor_ws/src deeprotor_ws/src/rotors_hil.rosinstall
wstool update -t deeprotor_ws/src

# install additional dependencies for rotors_simulator
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
sudo python get-pip.py
sudo pip install future
sudo apt-get install ros-kinetic-geographic-msgs
sudo apt-get install libgeographic-dev
sudo apt-get install geographiclib-tools
sudo apt-get install libignition-math2-dev

# fix bug in dependency code
sed -i 's/msg.twist_covariance/msg.velocity_covariance/g' deeprotor_ws/src/mavros/mavros_extras/src/plugins/odom.cpp

# Setup for bundling & running
sudo rosdep init
rosdep update
rosdep install --from-paths deeprotor_ws/src --ignore-src -r -y