#! /bin/bash

a=`df |grep sda2| awk '{print $2}'`
b=`df |grep sda2| awk '{print $3}'`
c=`awk "BEGIN {printf \"%.4f\n\", $b/$a*100}"`

#Repeat loop for 1 min
for i in {1..6}
do
	echo $i $a $b $c >> 02.dat;
	echo " "
sleep 1
done


