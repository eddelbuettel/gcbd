#!/bin/bash

for n in 250 500 750 1000 1250 1500 1750 2000 2250 2500 2750 3000 3250 3500 3750 4000; 
#for n in 250 500 750 1000 1250 1500 1750 2000 2250 2500; 
#for n in 2250 2500 3000 3250 3500 3750 4000; 
#for n in 250;
do
    if [ $n -gt 2000 ]
    then
    	r=10
    else
        r=20
    fi
    echo "Now starting $n $r"
    ./benchmark.r -n $n -r $r -b lu -v
done
