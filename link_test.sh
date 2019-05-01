#!/bin/bash
directory=""

if [ "$1" != "" ]; then
	directory="$1"
else
	echo "Enter a directory"
	exit
fi

for filename in "$directory"/*; do 
	echo "Opening links in " $filename
	grep -o 'href="[^"]*"' $filename | grep -Eo '(http|https)://[^"]+' | sort -u | while read -r line ; do 
		echo "processing $line" 
		/usr/bin/open -a "/Applications/Google Chrome.app" $line
		echo "Press Enter to continue or q & enter to quit"
		read input </dev/tty
			if [[ "$input" == "q" || "$input" == "Q" ]]; then 
				kill -9 $PPID
			else
				continue
			fi	
	done
done
