@echo off

adb root; adb wait-for-device;adb remount;

copy Z:\rk3288-N\out\target\product\rk3288\vendor\lib\hw\audio.primary.rk30board.so .\

adb push .\audio.primary.rk30board.so /vendor/lib/hw/audio.primary.rk30board.so

adb reboot