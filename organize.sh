#!/bin/bash

for image in ../pool/*; do
	echo $image
	feh -x $image
	read -p "Enter correct letter: " letter
	[ -d "$letter" ] || { echo "Nonexistent label, skipping..."; continue; }
	i=0
	while [ -e ${letter}/${letter}${i}.jpg ]; do ((i+=1)); done
	cp $image ${letter}/${letter}${i}.jpg
done
