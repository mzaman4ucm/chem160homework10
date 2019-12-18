#!/bin/bash

intregex='^[0-9]+$'

ls $1 &> /dev/null

if [ $? -ne 0 ]; then

	echo "File not found"
else
	echo "File found"

	if ! [[ $2 =~ $intregex ]] && ! (( $2 > 0 )) ; then
		echo "$2 not an positive integer"
	exit 1

	else
		echo "Head: "
		head -n $2 $1
		echo "Tail: "
		tail -n $2 $1
	fi
fi
