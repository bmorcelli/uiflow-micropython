# stickc-plus2 https://github.com/m5stack/m5stack-board-id/blob/558d0c4e4fc55a72805827c65a5255aa4b844515/board.csv#L7
set(BOARD_ID 5)

set(SDKCONFIG_DEFAULTS
    ./boards/sdkconfig.base
    ./boards/sdkconfig.flash_8mb
    ./boards/sdkconfig.ble
    ./boards/sdkconfig.240mhz
    ./boards/sdkconfig.disable_iram
    ./boards/M5STACK_StickC_PLUS2/sdkconfig.board
    ./boards/sdkconfig.spiram
)

# If not enable LVGL, ignore this...
set(LV_CFLAGS -DLV_COLOR_DEPTH=16 -DLV_COLOR_16_SWAP=0)

if(NOT MICROPY_FROZEN_MANIFEST)
    set(MICROPY_FROZEN_MANIFEST ${CMAKE_SOURCE_DIR}/boards/manifest.py)
endif()
