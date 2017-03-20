#!/bin/bash

cd $(dirname $0)

dotfiles=$PWD/dotfiles
backup=~/dotfiles_backup

for file in $dotfiles/*
do
	dest=~/.${file##*/}

	if [ -h $dest ]
	then
		echo "Remove symlink $dest"
		rm $dest
	elif [ -f $dest ]
	then
		echo "Back up $dest"
		if [ ! -d $backup ]
		then
			mkdir $backup
		fi
		mv $dest $backup
	fi

	echo "Create symlink $dest -> $file"
	ln -s $file $dest
done

for file in ~/.*
do
	if [ ! -e $file ]
	then
		echo "Remove stale symlink $file"
		rm $file
	fi
done
