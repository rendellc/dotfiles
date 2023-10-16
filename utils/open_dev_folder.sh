#!/bin/bash


path=`ls -d ~/dev/* | tr ' ' '\n' | fzf`

if [ -z "$path" ]
then
	echo "No folder selected"
	exit 1
fi

echo "Path: $path"
name=$(basename $path)
echo "Name: $name"

SESSION=$(tmux list-sessions | grep $name)
SESSION=${SESSION%%:*}

# Note, if session exists, then name and SESSION will be the same value

echo "Session: $SESSION"


if [ -z "$TMUX" ]; then
	# tmux is not active
	echo "Tmux is not active"
	if [ -z "$SESSION" ]; then
		# session does not exist
		echo "Session does not exist"
		tmux new-session -s $name -c $path
	else
		echo "Session exists"
		tmux attach -t $SESSION
	fi
else
	# tmux is active
	echo "Tmux is active"
	if [ -z "$SESSION" ]; then
		# session does not exist, start it in detached mode
		echo "Session does not exist"
		tmux new-session -d -s $name -c $path

		tmux switch-client -t $name
	else
		# session exists, and we are in tmux. 
		echo "Session exists"
		tmux switch-client -t $SESSION
	fi
fi
