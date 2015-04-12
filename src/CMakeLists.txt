CMAKE_MINIMUM_REQUIRED(VERSION 2.8)
PROJECT(CMakeHelloWorld)

#version number
SET(CMakeHelloWorld_VERSION_MAJOR 1)
SET(CMakeHelloWorld_VERSION_MINOR 0)

#include the subdirectory containing our libs
ADD_SUBDIRECTORY(Hello)

#include_directories(Hello)
#indicate the entry point for the executable
ADD_EXECUTABLE(CMakeHelloWorld Hello hello_world.cpp)

# Indicate which libraries to include during the link process.
TARGET_LINK_LIBRARIES(CMakeHelloWorld Hello)

INSTALL(TARGETS CMakeHelloWorld DESTINATION bin)
