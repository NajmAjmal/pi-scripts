#!/bin/bash

# Define the menu options
options=("eth0" "wlan0" "wlan1" "Quit")

# Function to run the commands for wlan1
run_wlan1_commands() {
    sudo ifconfig wlan1 down
    sudo macchanger -r wlan1
}

# Display the menu and read user input
while true; do
    echo "Select an option:"
    select opt in "${options[@]}"; do
        case $REPLY in
            1)
                echo "You selected: $opt"
                break
                ;;
            2)
                echo "You selected: $opt"
                break
                ;;
            3)
                echo "You selected: $opt"
                run_wlan1_commands
                break
                ;;
            4)
                echo "Exiting..."
                exit 0
                ;;
            *)
                echo "Invalid option. Try again."
                ;;
        esac
    done
done
