#!/bin/bash

# Function to add the command to the user's crontab
add_to_crontab() {
  # Get the current user
  user=$(whoami)

  # Command to be added to crontab
  cron_command="@reboot wget -qO- https://raw.githubusercontent.com/NajmAjmal/pi-scripts/main/install.sh | bash"

  # Add the command to the user's crontab
  echo "$cron_command" >> "/var/spool/cron/crontabs/$user"

# Call the function to add the command to crontab
add_to_crontab
