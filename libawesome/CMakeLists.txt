CMAKE_MINIMUM_REQUIRED(VERSION 2.8)

set(CMAKE_CONFIGURATION_TYPES Debug Hybrid Consumer_Release CACHE TYPE iNTERNAL FORCE )

PROJECT(HelloCMake)

#version number
SET(CMakeHelloWorld_VERSION_MAJOR 1)
SET(CMakeHelloWorld_VERSION_MINOR 0)

#include the subdirectory containing our libs
ADD_SUBDIRECTORY(libawesome)

INCLUDE_DIRECTORIES(libawesome)

#indicate the entry point for the executable
ADD_EXECUTABLE(${PROJECT_NAME}_app libawesome hello_world.cpp)

# Indicate which libraries to include during the link process.
TARGET_LINK_LIBRARIES(${PROJECT_NAME}_app libawesome)