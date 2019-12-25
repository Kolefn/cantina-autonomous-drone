# Download aws cpp sdk
cd .. 
git clone https://github.com/aws/aws-sdk-cpp.git
cd aws-sdk-cpp
mkdir build
cd build

# Build only the components we need
cmake .. -DBUILD_ONLY=kinesis -DCMAKE_BUILD_TYPE=RelWithDebInfo -DBUILD_SHARED_LIBS=ON
cmake .. -DBUILD_ONLY=logs -DCMAKE_BUILD_TYPE=RelWithDebInfo -DBUILD_SHARED_LIBS=ON

# Install components
make
sudo make install

cd ../../cantina-autonomous-drone