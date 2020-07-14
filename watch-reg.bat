@echo off
title "watch reg"
echo "read rt5640 reg 0x02"

for /l %%I in (1,1,1000) do  (
timeout /t 1 & adb shell "cat /sys/devices/ff660000.i2c/i2c-2/2-001c/codec_reg | grep 02:" 
)

pause