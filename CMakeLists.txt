cmake_minimum_required(VERSION 2.6 FATAL_ERROR)
project(SHOT_demo)
find_package(PCL 1.3 REQUIRED)
include_directories(${PCL_INCLUDE_DIRS})
link_directories(${PCL_LIBRARY_DIRS})
add_definitions(${PCL_DEFINITIONS})
add_executable(SHOT_demo main.cpp)
target_link_libraries(SHOT_demo ${PCL_LIBRARIES})

