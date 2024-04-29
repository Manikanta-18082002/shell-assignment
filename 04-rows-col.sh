#Q4)  Convert Rows into Columns and Columns into Rows
#If file.txt contains

# name age    Output:
# mani 21     name mani kanta
# kanta 33    age 21 33


#!/bin/bash

# This script converts rows to columns and columns to rows.

# Get the input file.
input_file=$1

# Get the output file.
output_file=$2

# Check if the input file exists.
if [ ! -f "$input_file" ]; then
  echo "Input file does not exist."
  exit 1
fi

# Check if the output file exists.
if [ -f "$output_file" ]; then
  echo "Output file already exists."
  exit 1
fi

# Create the output file.
touch "$output_file"

# Transpose the rows and columns.
while read line; do
  # Split the line into columns.
  columns=($line)

  # For each column, print the column name and the value.
  for column in "${columns[@]}"; do
    echo "$column" >> "$output_file"
  done
done < "$input_file"

# Close the output file.
fclose "$output_file"
