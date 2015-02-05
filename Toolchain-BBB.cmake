#INCLUDE(CMakeForceCompiler)

SET(CMAKE_SYSTEM_NAME Linux) 
SET(CMAKE_SYSTEM_VERSION 1) 
# specify the cross compiler 
SET(CMAKE_C_COMPILER arm-linux-gnueabihf-gcc) 
SET(CMAKE_CXX_COMPILER arm-linux-gnueabihf-g++) 

# specify the cross compiler
#CMAKE_FORCE_C_COMPILER(/opt/beaglebone/rootfs/usr/bin/arm-linux-gnueabihf-gcc GNU)
#CMAKE_FORCE_CXX_COMPILER(/opt/beaglebone/rootfs/usr/bin/arm-linux-gnueabihf-g++ GNU)


# where is the target environment 
SET(CMAKE_FIND_ROOT_PATH /opt/beaglebone/rootfs) 
# search for programs in the build host directories 
SET(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER) 
# for libraries and headers in the target directories 
SET(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY) 
SET(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
