#!/bin/bash

for b in lu qr svd matmult;
do 
    ##for n in 250 500 750 1000 1250 1500 1750 2000 2250 2500 2750 3000 3250 3500 3750 4000; 
	for n in 100 200 300 400 500 600 700 800 900 1000 1250 1500 1750 2000 2500 3000 3500 4000 4500 5000;
	do
		if [ $n -lt 1000 ]; then
    		r=50
		elif [ $n -lt 2000 ]; then
			r=30
		elif [ $n -lt 3000 ]; then
			r=20
		elif [ $n -lt 4000 ]; then
			r=5
		fi
		echo "Now starting $n $r $b"
		./benchmark.r -n $n -r $r -b $b -v
	done
done
