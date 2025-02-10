#!/bin/bash

# This script attempts to process a list of files, but it contains a subtle error that can cause unexpected behavior.

files=("file1.txt" "file2.txt" "file3.txt")

for file in ${files[@]}; do
  if [ -f "$file" ]; then
    echo "Processing: $file"
    # ... process the file ...
  else
    echo "Error: File not found: $file"
  fi
# Missing done statement
# This causes the loop to not terminate properly and may lead to unexpected behavior
# in the following code or simply hangs.

echo "Done processing files."