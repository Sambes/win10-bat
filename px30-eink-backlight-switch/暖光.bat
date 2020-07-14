@echo off

title ¼¤»îÅ¯¹â

echo "warm light"
adb root
adb shell "echo 1 > /sys/devices/platform/bl-ctl/warm"
pause