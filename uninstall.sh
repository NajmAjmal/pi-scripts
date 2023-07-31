#!/bin/bash

# Function to ask a yes/no question
ask_yes_no() {
    while true; do
        read -p "$1 [y/n]: " choice
        case "$choice" in
            [Yy]*)
                return 0
                ;;
            [Nn]*)
                return 1
                ;;
            *)
                echo "Invalid input. Please answer with 'y' for Yes or 'n' for No."
                ;;
        esac
    done
}

# Example usage
if ask_yes_no "Are you sure you want to uninstall? This will remove pi-scripts & xmrig directory, all contents will be deleted forever"; then
    echo "Uninstalling"
    cd /$home/$user
    rm -f -r pi-scripts
    rm -f -r xmrig
    echo "Program Uninstalled"
    echo ""
    echo "You can re-install this program again"
    echo "sudo wget -qO- https://raw.githubusercontent.com/NajmAjmal/pi-scripts/main/install.sh | bash"
else
    echo "ABORTED"
fi
