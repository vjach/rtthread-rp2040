include(FindGit)
find_package(Git)

if (NOT Git_FOUND)
    message(FATAL_ERROR "Git not found!")
endif ()

include(FetchContent)

FetchContent_Declare(
    picosdk
    GIT_REPOSITORY https://github.com/raspberrypi/pico-sdk.git
    GIT_TAG 1.3.1
    GIT_SHALLOW TRUE
    GIT_PROGRESS TRUE
    SOURCE_DIR ${CMAKE_SOURCE_DIR}/externals/pico_sdk
    PATCH_COMMAND git am ${CMAKE_CURRENT_SOURCE_DIR}/bsp/raspberry-pico/patches/0001-Patch-crt0.S.patch

    )

if (NOT picosdk_POPULATED)
    FetchContent_MakeAvailable(picosdk)
    FetchContent_GetProperties(picosdk SOURCE_DIR)
    include(${picosdk_SOURCE_DIR}/external/pico_sdk_import.cmake)
    pico_sdk_init()
endif()

