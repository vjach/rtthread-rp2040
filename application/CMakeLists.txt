add_library(application
  main.cc
  )

target_include_directories(application SYSTEM PUBLIC ${CMAKE_SOURCE_DIR}/include ${CMAKE_SOURCE_DIR}/bsp/raspberry-pico)
target_link_libraries(rtthread application)
