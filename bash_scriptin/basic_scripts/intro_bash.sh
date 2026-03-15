#!/bin/bash

echo Ai chan is kawaii 	# echo simply prints output in terminal
echo "$PWD" 
echo "$PATH" | tr : '\n' | tail -n2

name='robin  bro  '
foo=$(cowsay Robin is God)
echo $name
echo "$foo"  # The " " preserves the spaces and /n

host=$HOSTNAME
sl=$SHELL
echo "hello $host how are you"

echo "Shell: $sl"
echo "Script: $0"

echo -ne "$thing\t" 	# -n: keeps output in same line
	                # -e: enables interpretation of escape characters
