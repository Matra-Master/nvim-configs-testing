#!/bin/bash
FOLDER="$1"

# Check if FOLDER is passed, exists, and is not empty
if [[ -z "$FOLDER" ]]; then
    echo "Error: No folder specified."
    echo "Usage: $0 /path/to/folder"
    exit 1
fi

if [[ ! -d "$FOLDER" ]]; then
    echo "Error: $FOLDER is not a valid directory."
    exit 1
fi

if [[ -z "$(ls -A "$FOLDER")" ]]; then
    echo "Error: $FOLDER is empty."
    exit 1
fi

docker run --rm -it -v "$FOLDER":/root/.config/nvim neovim-ubuntu:latest bash
