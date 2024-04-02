#!/bin/bash


source_dir="source_directory"

mkdir -p "$source_dir"


for i in {1..5}; do
    filename="file_$i.txt"
    # Generate random content for the file
    content=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 50 | head -n 1)
    echo "$content" > "$source_dir/$filename"
done

echo "Random text files created and placed in $source_dir"