#!/bin/bash

# Prompt the user to enter the file name
read -p "Enter the file name: " file_name

# Check if the file exists
if [ -f "$file_name" ]; then
    # Convert the file contents to lowercase and save it in a new file
    lowercase_file="${file_name%.*}_lowercase.txt"
    tr '[:upper:]' '[:lower:]' < "$file_name" > "$lowercase_file"

    # Count the number of lines, words, and characters
    lines=$(wc -l < "$lowercase_file")
    words=$(wc -w < "$lowercase_file")
    characters=$(wc -m < "$lowercase_file")

    echo "Number of lines: $lines"
    echo "Number of words: $words"
    echo "Number of characters: $characters"

    echo "File contents in descending order:"
    sort -r "$lowercase_file"
else
    echo "File not found."
fi

