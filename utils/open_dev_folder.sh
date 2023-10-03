#!/bin/bash


selected=`ls -d ~/dev/* | tr ' ' '\n' | fzf`

echo "Selected: $selected"
