#!/bin/bash

cd $(dirname $0)

vscode_directory=~/Library/Application\ Support/Code/User
files_directory=$PWD/vscode
backup=~/vscode_backup
files=( "settings.json" "keybindings.json" "snippets" )

for file in "${files[@]}"
do
	dest=$vscode_directory/$file

	if [ -h "${dest}" ]
	then
		echo "Remove symlink $dest"
		rm "${dest}"
	else
		echo "Back up $dest"
		if [ ! -d $backup ]
		then
			mkdir $backup
		fi
		mv "${dest}" $backup
	fi

	echo "Create symlink $dest -> $files_directory/$file"
	ln -s $files_directory/$file "${dest}"
done

for file in "${vscode_directory}"/*
do
	if [ ! -e "$file" ]
	then
		echo "Remove stale symlink $file"
		rm "$file"
	fi
done