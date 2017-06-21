#!/bin/bash

# Start in the directory of this file.
cd $(dirname $0)

# Link dotfiles.
for file in $PWD/dotfiles/*
do
	ln -sniv $file ~/.${file##*/}
done

# Link vscode.
for file in $PWD/vscode/*
do
	ln -sniv $file ~/Library/Application\ Support/Code/User/${file##*/}
done

# Clean up dotfiles.
for file in ~/.*
do
	if [ ! -e $file ]
	then
		echo "remove stale symlink $file"
		rm $file
	fi
done

# Clean up vscode.
for file in ~/Library/Application\ Support/Code/User/*
do
	if [ ! -e "$file" ]
	then
		echo "remove stale symlink $file"
		rm "$file"
	fi
done