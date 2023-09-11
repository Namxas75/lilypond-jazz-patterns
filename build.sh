#!/bin/bash

ruby generate.rb

# Define the source and destination directories
source_directory="lilypond/"
destination_directory="pdf/"

# Ensure the destination directory exists
mkdir -p "$destination_directory"

# Use find to locate all LilyPond source files in the source directory
# and then use xargs to process each file with LilyPond, placing the output in the destination directory
find "$source_directory" -name "*.ly" -print0 | xargs -0 -I {} lilypond -o "$destination_directory" "{}"

echo "All LilyPond files processed and placed in $destination_directory."

pdftk pdf/*.pdf cat output pdf/8tonic_line_compendium.pdf