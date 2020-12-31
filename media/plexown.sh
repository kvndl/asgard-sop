#!/bin/bash

function show_usage (){
	printf "Usage: $0 [directory]"

	return 0
}

function ownage (){
	# grab directory from arg
	$DIR="$1"

	# confirm
	read -r -p "Are you sure? [y/N] " response

	if [[ "$response" =~ ^([yY][eE][sS]|[yY])$ ]]
	then
	    chown -R plex:plex $DIR && \
		chmod -R 770 $DIR
	else
	    echo "See you on the flipside"
	fi
}

while [ ! -z "$1" ]; do
	if [[ "$1" == "--help" ]] || [[ "$1" == "-h" ]]; then
		show_usage

	elif [[ ! -d "$DIR" ]]
	then
		echo "Not a valid directory"
		exit 4

	elif [[ "$DIR" != -d ]]
	then
		echo "Not a directory"
		exit 5

	else
		ownage		
	fi