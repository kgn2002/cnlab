#!/bin/bash
echo "Enter a file:"
read f

if [ -e "$f" ]; then
    echo "Enter the word to search and remove:"
    read w
    
    if [ -z "$w" ]; then
        echo "Invalid word input."
        exit 1
    fi
    
    grep -vi "$w" "$f" > a1.txt
    mv a1.txt "$f"
    
    echo "Updated file content:"
    cat "$f"
else
    echo "No such file exists."
fi
