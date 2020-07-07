#! /bin/bash

	a=`df |grep disk1| awk '{print $4}'`
	b=`df |grep disk1| awk '{print $3}'`

#Repeat loop for 1 min
for i in {1..5}
do 
	echo -n "$i "
	echo `date`
	echo "Total disk space:" `df |grep disk1| awk '{print $4}'`
	echo "Disk space used:" `df |grep disk1| awk '{print $3}'`
	echo "% used:" `awk "BEGIN {printf \"%.4f\n\", $b/$a*100}"`"%"
	sleep 1
done

#Save to file
./sysObs.sh > 02.dat
