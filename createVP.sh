#!/bin/bash

# Function to display usage
usage() {
    echo "Usage: $0 [project-directory] [template]"
    echo "Default project-directory is the current directory."
    echo "Default template is react."
}

# Set default values
PROJECT_DIR="."
TEMPLATE="react"

# Check for provided arguments
if [ $# -ge 1 ]; then
    PROJECT_DIR=$1
fi

if [ $# -ge 2 ]; then
    TEMPLATE=$2
fi

# Display the settings
echo "Creating Vite project in directory: $PROJECT_DIR"
echo "Using template: $TEMPLATE"

# Create the Vite project
npm create vite@latest $PROJECT_DIR -- --template $TEMPLATE
