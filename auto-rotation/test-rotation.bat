@echo off
title "rotation"
echo "rotation 0 - 180°"
adb -s 192.168.137.152:5566 root
adb -s 192.168.137.152:5566 shell content insert --uri content://settings/system --bind name:s:accelerometer_rotation --bind value:i:0
for /l %%I in (1,1,1000) do  (
echo "test %%I"
::timeout /t 1 && adb -s 192.168.137.152:5566 shell content insert --uri content://settings/system --bind name:s:user_rotation --bind value:i:0;
::timeout /t 1 && adb -s 192.168.137.152:5566 shell content insert --uri content://settings/system --bind name:s:user_rotation --bind value:i:2;
freezeRotation
timeout /t 1 && adb -s 192.168.137.152:5566 shell content insert --uri content://settings/system --bind name:s:freezeRotation --bind value:i:0;
timeout /t 1 && adb -s 192.168.137.152:5566 shell content insert --uri content://settings/system --bind name:s:freezeRotation --bind value:i:2;
)

pause