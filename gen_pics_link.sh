#!/bin/bash
baseUrl="https://github.com/qyh/hao/raw/master/"

files=`find . -name '*.jpg' & find . -name '*.png' & find . -name '*.jpeg'`

> outfile
for file in $files; do
	#echo ${file#./}
	link=$baseUrl${file#./}
	name=${file##*/}
	echo $link
	echo "![$name]($link)" >> outfile
done
