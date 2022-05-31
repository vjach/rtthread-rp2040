add_executable(rtthread
  clock.c
  components.c
  cpu.c
  device.c
  idle.c
  ipc.c
  irq.c
  kservice.c
  mem.c
  memheap.c
  mempool.c
  object.c
  scheduler.c
  signal.c
  slab.c
  thread.c
  timer.c
  )

target_include_directories(rtthread SYSTEM PUBLIC ${PROJECT_SOURCE_DIR}/include ${PROJECT_SOURCE_DIR}/bsp/raspberry-pico)

# Pull in our pico_stdlib which pulls in commonly used features
target_link_libraries(rtthread pico_stdlib hardware_clocks hardware_i2c hardware_spi hardware_pwm hardware_dma hardware_uart pico_multicore)
target_compile_options(rtthread PRIVATE -g -O0)

