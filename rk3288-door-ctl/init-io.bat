@echo off

echo "Start init gpio"
adb root
adb remount
adb shell "echo 112 > /sys/class/gpio/export"
adb shell "echo out > /sys/class/gpio/gpio112/direction"
adb shell "ln -s /sys/class/gpio/gpio112/value /dev/cold"

adb shell "echo 113 > /sys/class/gpio/export"
adb shell "echo out > /sys/class/gpio/gpio113/direction"
adb shell "ln -s /sys/class/gpio/gpio113/value /dev/warm"
echo "GPIO mapping finished"

echo "link brightness to dev"
adb shell "ln -s /sys/class/backlight/backlight/brightness /dev/brightness"
pause

