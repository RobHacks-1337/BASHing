#!/bin/bash	-- shebang

echo Ai chan is kawaii 	# echo simply prints output in terminal
echo "$PWD" 
echo "$PATH" | tr : '\n'

name='robin  bro  '
foo=$(cowsay Robin is God)

echo $name
echo "$foo"  # The " " preserves the spaces and /n

