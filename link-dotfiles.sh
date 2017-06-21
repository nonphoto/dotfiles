#!/bin/bash

cd $(dirname $0)

function link {
	ln -sniv $1 $2
}

for file in $PWD/dotfiles/*
do
	link $file ~/.${file##*/}
done

for file in ~/.*
do
	if [ ! -e $file ]
	then
		echo "Remove stale symlink $file"
		rm $file
	fi
done