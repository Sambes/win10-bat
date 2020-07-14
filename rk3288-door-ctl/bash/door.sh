#!/system/bin/sh

io=$(ls  /sys/devices/io-ctl.*/io)
if [ -z "$io" ]; then
	echo "io no found";
else
	echo "1 1 " >  $io;
	echo "2 1 " > $io;
	cat $io;
	sleep 2;
	echo "1 0 " >  $io;
	echo "2 0 " > $io;
	cat $io;
fi

exit
