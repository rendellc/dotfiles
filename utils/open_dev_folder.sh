#!/bin/bash


path=`ls -d ~/dev/* | tr ' ' '\n' | fzf`

if [ -z "$path" ]
then
	echo "No folder selected"
	exit 1
fi

echo "Path: $path"
name=${path##*/}
echo "Name: $name"

tmux new -s $name -c $path

