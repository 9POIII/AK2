cmake_minimum_required(VERSION 2.8)
project(calculator)

add_library(calculator STATIC calculator.cpp )
add_executable(out main.cpp)

target_link_libraries(out calculator)
