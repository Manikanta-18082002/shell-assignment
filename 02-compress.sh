#!/bin/bash

# Get the source directory and destination directory from the user.
source_dir=$1
destination_dir=$2

# Create a timestamp.
timestamp=$(date +%F-%H-%M-%S)

# Creating the compressed archive (of Source dir) in destinaion folder
tar -czvf "$destination_dir-$timestamp.tar.gz" "$source_dir"   

# Printing message to the user.
echo "The compressed archive has been created at $destination_dir-$timestamp.tar.gz"