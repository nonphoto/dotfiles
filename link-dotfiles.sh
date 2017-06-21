#!/bin/bash

cd $(dirname $0)

dotfiles=$PWD/dotfiles
backup=~/dotfiles_backup

function link {
	source=$1
	target=$2

	if [ -h $target ]
	then
		echo "Remove symlink $target"
		rm $target
	elif [ -f $target ]
	then
		echo "Back up $target"
		if [ ! -d $backup ]
		then
			mkdir $backup
		fi
		mv $target $backup
	fi

	echo "Create symlink $target -> $source"
	ln -s $source $target
}

for file in $dotfiles/*
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