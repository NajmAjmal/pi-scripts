#!/bin/bash

# Function to display prompt and read user input
function ask_yes_no {
    while true; do
        read -p "$1 (y/n): " answer
        case "$answer" in
            [Yy]* ) return 0;;
            [Nn]* ) return 1;;
            * ) echo "Please answer 'yes' or 'no'.";;
        esac
    done
}

# Main script
echo "=======  WARNING ========"
echo "The script you are about to run is an external script."
echo ""

# Prompt the user to continue with the warning
if ! ask_yes_no "Do you want to continue?"; then
    echo "You chose 'no'. Script terminated."
    exit 1
fi

# The rest of your script goes here if the user chose 'yes'
