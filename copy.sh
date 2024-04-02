#!/bin/bash


source_dir="/source_directory"
destination_dir="/destination_directory"


cp -R "$source_dir"/* "$destination_dir"/
echo "Files copied recursively from $source_dir to $destination_dir"