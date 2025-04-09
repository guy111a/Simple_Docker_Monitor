#!/bin/bash

IMAGE_LIST_FILE="docker_images"
HOSTNAME=$(hostname)

# Check if the file exists
if [ ! -f "$IMAGE_LIST_FILE" ]; then
    echo "Error: File '$IMAGE_LIST_FILE' not found."
    exit 1
fi

while IFS= read -r IMAGE_NAME; do
    # Skip empty lines and comments
    [[ -z "$IMAGE_NAME" || "$IMAGE_NAME" =~ ^# ]] && continue

    if docker ps | grep -q "$IMAGE_NAME"; then
        echo "Container with image '$IMAGE_NAME' is running."
    else
        echo "Container with image '$IMAGE_NAME' is NOT running."
        MESSAGE="Docker image '$IMAGE_NAME' on server '$HOSTNAME' is NOT running"
        python3 alert.py -m "$MESSAGE"
    fi
done < "$IMAGE_LIST_FILE"
