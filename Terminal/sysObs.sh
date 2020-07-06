#! /bin/bash

#Total output
a= echo `df |grep sda2| awk '{print $2}'`
#Used output
b= echo `df |grep sda2| awk '{print $3}'`


#Repeat loop for 1 min
for i in {1..5}; do echo -n "$i "; echo `awk "BEGIN {printf \"%.4f\n\", $((b/a))}"`"%"; sleep 1; done

#Save to file
./sysObs.sh > 02.dat
