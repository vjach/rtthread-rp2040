target_include_directories(rtthread PUBLIC board)
target_sources(rtthread PUBLIC board/board.c board/board.h)
target_sources(rtthread PUBLIC drivers/drv_gpio.c drivers/drv_gpio.h)
