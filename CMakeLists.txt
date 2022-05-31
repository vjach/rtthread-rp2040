cmake_minimum_required(VERSION 3.16)

set(CMAKE_C_STANDARD 11)
set(CMAKE_CXX_STANDARD 17)

# enable compiling database
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

add_compile_definitions(XOSC_MHZ=8)
include(bsp/raspberry-pico/sdk.cmake)

project(rtthread-rp2040 C CXX ASM)

include(externals.cmake)
add_subdirectory(src)
add_subdirectory(bsp/raspberry-pico)
add_subdirectory(libcpu)
add_subdirectory(application)

add_compile_options(-Wall
        -Wno-format
        -Wno-unused-function # we have some for the docs that aren't called
        -Wno-maybe-uninitialized
        )


