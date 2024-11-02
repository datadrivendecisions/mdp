#!/bin/bash

# Loop over all .ipynb files in the current directory
for file in *.ipynb; do
    # Check if the file exists to avoid errors if no .ipynb files are found
    if [ -f "$file" ]; then
        echo "Converting $file to .qmd..."
        # Run the quarto convert command
        quarto convert "$file"
    else
        echo "No .ipynb files found in the current directory."
        break
    fi
done
