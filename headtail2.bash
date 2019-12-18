#!/bin/bash

intregex='^[0-9]+$'
ls $1 &> /dev/null
if [ $? -ne 0 ]; then

	echo "File not found"
else
	echo "File found"
	lines=$(wc -l $1 | awk '{print $1}')

	if ! [[ $2 =~ $intregex ]] && ! (( $2 > 0 )); then
		echo "$2 not an positive integer"
	exit 1

	else
		if (( $2 > lines )); then
			echo "File too short for specified lines"
			exit 1
		else
			echo "Head: "
			head -n $2 $1
			echo "Tail: "
			tail -n $2 $1
		fi
	fi
fi
