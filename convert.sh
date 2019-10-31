#!/bin/bash

function file {
	file=$1
	filename=${file%????}
	pandoc -s -t markdown -f rst --toc $1 -o $filename.md
	rm $1
}

function direct {
	cd $1
	ls
	for f in *; do
		if [ ${f: -4} == ".rst" ]; then
			file $f 
		elif [ -d $f ]; then
			direct $f
		fi
	done
	cd ..
}

dir_name='converted'

cp -r source $dir_name

direct $dir_name