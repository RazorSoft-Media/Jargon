cmake_minimum_required(VERSION 3.20)
project(jargon C)

set(CMAKE_C_STANDARD 11)

add_executable(jargon main.c)

include_directories("./cmocka")
