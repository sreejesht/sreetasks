#!/bin/bash

# Task 2: Replace "give" with "learning" from the 5th line onward, only in lines containing "welcome"
input_file="input.txt"  # File name

if [[ ! -f $input_file ]]; then
            echo "Error: File '$input_file' not found."
                exit 1
fi

# Display original file content
echo "Original file content:"
cat "$input_file"
echo "--------------------------"

# Use awk to process the file and create a temporary file
awk 'NR >= 5 && /welcome/ { gsub(/give/, "learning") } { print }' "$input_file" > temp_file

# Overwrite the original file with the updated content
mv temp_file "$input_file"

# Display the modified file content
echo "Modified file content:"
cat "$input_file"
echo "--------------------------"

echo "Replacement completed in file: $input_file"
