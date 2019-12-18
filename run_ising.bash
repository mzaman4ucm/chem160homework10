#!/bin/bash
START=10
END=$1
INC=5

for i in $(eval echo "{$START..$END..$INC}")
do
	./Ising_model.py $i $2
done

