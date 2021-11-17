cmake_minimum_required(VERSION 3.20)
project(jargon C)

set(CMAKE_C_STANDARD 11)

add_library(jargon SHARED library.c)