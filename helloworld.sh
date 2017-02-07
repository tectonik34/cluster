#!/bin/bash

usage () {
	echo "usage: $0 number_of_iterations MSG" ;
}

if [  $# -lt 2 ] ; then 
	usage; exit
else

	x=1
	while [ $x -le $1 ]
	do
		echo $2 
		x=$(( $x + 1 ))
		sleep 1
	done
fi
