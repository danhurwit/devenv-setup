#!/bin/bash

if [[ $# -eq 0 ]]
then 
	echo "Script takes file path as a positional argument ..."
else
	eval "cp -fr $1 ./dotfiles"
fi




