#!/bin/bash

DIRECTORY="/etc"

if [ ! -d "$DIRECTORY" ]; then
    echo "Error: $DIRECTORY does not exist."
    exit 1
fi

FILE_COUNT=$(find "$DIRECTORY" -type f | wc -l)

echo "Number of regular files in $DIRECTORY: $FILE_COUNT"