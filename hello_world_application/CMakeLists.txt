cmake_minimum_required(VERSION 3.4)
project(hw_app)
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

add_executable(hw_app hello_world.cpp)

target_link_libraries(hw_app formatter_ex)
