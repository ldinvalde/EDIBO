#! /bin/bash

rm tab1.dat
for i in {0..5}; do echo $((i)) $((i*i)) >> tab1.dat; sleep 1;  done



