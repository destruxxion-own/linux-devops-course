#!/bin/bash

DIRECTORY="/etc"

if [ ! -d "$DIRECTORY" ]; then
    echo "Error: $DIRECTORY does not exist."
    exit 1
fi

FILE_COUNT=$(find -H "$DIRECTORY" -type f | wc -l | tr -d ' ')

echo "Number of regular files in $DIRECTORY: $FILE_COUNT"