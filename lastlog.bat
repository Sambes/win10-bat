@echo off

title  getting last log 

echo "Get root permission"
adb root

call:getCnt cnt

adb pull /cache/recovery/last_kmsg ./last_kmsg.log
adb pull /cache/recovery/last_log ./last_log.log

for /l %%I in (1,1,%cnt%) do  (
    adb pull /cache/recovery/last_kmsg.%%I ./last_kmsg.%%I.log
    adb pull /cache/recovery/last_log.%%I ./last_log.%%I.log
)
pause
exit

:getCnt
for /f "tokens=*" %%i in ('adb shell "ls /cache/recovery/last_log* | busybox wc -l"') do (
	set a=%%i
)
set /a a-=1
set %1=%a%
goto:eof