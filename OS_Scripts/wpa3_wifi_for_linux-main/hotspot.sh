#!/bin/bash
#
# _________________
#< hack the system >
# -----------------
#    \                                  ___-------___
#     \                             _-~~             ~~-_
#      \                         _-~                    /~-_
#             /^\__/^\         /~  \                   /    \
#           /|  O|| O|        /      \_______________/        \
#          | |___||__|      /       /                \          \
#          |          \    /      /                    \          \
#          |   (_______) /______/                        \_________ \
#          |         / /         \                      /            \
#           \         \^\\         \                  /               \     /
#             \         ||           \______________/      _-_       //\__//
#               \       ||------_-~~-_ ------------- \ --/~   ~\    || __/
#                 ~-----||====/~     |==================|       |/~~~~~
#                  (_(__/  ./     /                    \_\      \.
#                         (_(___/                         \_____)_)
#
#This script works instead of the Hotspot-GUI.
#First install NetworkManager if you haven't already.
#You can follow these steps: https://computingforgeeks.com/install-and-use-networkmanager-nmcli-on-ubuntu-debian/
#After installation and activation, you can use the script.
#Will turn on wifi and establish WPA3 connectivity on Ubuntu 22.04-based OS's.
#IMPORTANT: DO NOT USE GUI WI-FI SETTINGS, IT WILL OVERWRITE SETTINGS MADE BY THIS SCRIPT
#if you have used GUI-Settings, just turn them off and execute this script again.
#
#(∩ ͡° ͜ʖ ͡°)⊃━☆ﾟ. *
#made with <3 @Schmodin
#
# Function to print text in green
green_text() {
    echo -e "\e[32m$1\e[0m"
}

# Function to print text in white
white_text() {
    echo -e "\e[37m$1\e[0m"
}

# Function to print text in red
red_text() {
    echo -e "\e[31m$1\e[0m"
}

# Function to display usage instructions
show_instructions() {
    white_text "--------------------------"
    white_text "|   Hotspot   Control    |"
    white_text "--------------------------"
    white_text "This script automatically:"
    white_text "  1. Turns on Wi-Fi."
    white_text "  2. Stops any active hotspot."
    white_text "  3. Starts a WPA3 hotspot."
    white_text "  [If connection activation fails, turn off wifi in settings and try again]"
    white_text "  To change hotspot-name & password use system settings."
    red_text   "  To stop the hotspot, run the script again."
    white_text "-------------------------------------------"
}

# Function to start the hotspot
start_hotspot() {
    green_text "Starting the hotspot..."

    # Turns on Wi-Fi if disabled
    nmcli radio wifi on

    # Establishes WPA3-standard signal in Wi-Fi settings
    nmcli connection modify Hotspot 802-11-wireless-security.key-mgmt sae

    # Starts working WPA3 hotspot session
    nmcli connection up Hotspot

    green_text "Hotspot active."
}

# Function to stop the hotspot
stop_hotspot() {
    red_text "Stopping the hotspot..."

    # Closes the hotspot session if active
    nmcli connection down Hotspot

    red_text "Hotspot stopped."
}

# Display usage instructions
show_instructions

# Start the hotspot or stop it based on current state
if nmcli -t -f NAME connection show --active | grep -q "^Hotspot$"; then
    stop_hotspot
else
    start_hotspot
fi

