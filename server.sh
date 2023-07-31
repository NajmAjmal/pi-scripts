#!/bin/bash

echo "Welcome to the Custom Server Scripts Installer"
echo "----------------------------------------------"
echo "Please select a program to install:"
echo "1. PIVPN"
echo "2. PIHOLE"
echo "3. DOCKER"
echo "4. Quit"

read -p "Enter the number of the program to install (1/2/3/4): " choice

case $choice in
    1)
        echo "Installing PIVPN..."
        curl -L https://install.pivpn.io | bash
        ;;
    2)
        echo "Installing PIHOLE..."
        curl -sSL https://install.pi-hole.net | bash
        ;;
    3)
        echo "Installing DOCKER..."
        curl -sSL https://get.docker.com | sh
        sudo usermod -aG docker $USER
        docker run hello-world
        ;;
    4)
        echo "Exiting..."
        ;;
    *)
        echo "Invalid choice. Please enter a valid number (1/2/3/4)."
        ;;
esac
