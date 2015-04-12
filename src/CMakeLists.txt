CMAKE_MINIMUM_REQUIRED(VERSION 2.8)
PROJECT(CMakeHelloWorld)

SET(dir ${CMAKE_CURRENT_SOURCE_DIR}/../build/)
SET(EXECUTABLE_OUTPUT_PATH ${dir} CACHE PATH "Build directory" FORCE)
SET(LIBRARY_OUTPUT_PATH ${dir} CACHE PATH "Build directory" FORCE)
SET(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${dir})
SET(CMAKE_BUILD_FILES_DIRECTORY ${dir})
SET(CMAKE_BUILD_DIRECTORY ${dir})
SET(CMAKE_BINARY_DIR  ${dir})
SET(EXECUTABLE_OUTPUT_PATH ${dir})
SET(LIBRARY_OUTPUT_PATH ${dir}lib)
SET(CMAKE_CACHEFILE_DIR ${dir})

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
