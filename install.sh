#!/bin/bash

# ***************************************************
# Author: Jonathan Steve Roland (josterand)
# Github: https://github.com/josterand
#
# This project is licensed under the MIT License.
# Copyright (c) 2024 Jonathan Steve Roland (josterand).
# For detailed terms and conditions, please refer to
# the LICENSE file included with this project.
# ***************************************************

# Required variables
title="=================================\nBSPWM rice Installer by Josterand\n================================="
subtitle="
This script will install my bspwm rice config files and other necessary files to your system.
Please backup your existing rice config files and install all the required packages before proceeding.
For more information, please see https://github.com/josterand/dotfiles.

This repo and it's contents are licensed under the MIT License and come with no warranty of any kind.
I'm not responsible for any damage caused by this script or the files it installs."

# Function to log messages with different categories
log() {
    local txt="$1"
    local category="$2"
    local bold="\033[1m"
    local reset="\033[0m"

    case "$category" in
    error)
        echo -e "${bold}\033[31m:: ${txt}${reset}" # Red
        ;;
    warning)
        echo -e "${bold}\033[33m:: ${txt}${reset}" # Yellow
        ;;
    success)
        echo -e "${bold}\033[32m:: ${txt}${reset}" # Green
        ;;
    normal)
        echo -e "${bold}:: ${txt}${reset}" # Normal with bold text style
        ;;
    plain)
        echo -e "${txt}" # Plain text without log indicator
        ;;
    *)
        return 1
        ;;
    esac
}

# Setup dotfiles and configuration files
rice_setup() {
    log "Searching for available configs in dotfiles folder" "normal"
    subfolders=()
    for dep in "$(pwd)/.config"/*/; do
        [ -d "$dep" ] && subfolders+=("$(basename "$dep")")
        log "$dep config detected!" "normal"
    done
    sleep 1

    log "Copying configuration files..." "warning"
    # Copy configuration files
    for folder_name in "${subfolders[@]}"; do
        capitalized_folder_name="$(echo "$folder_name" | sed 's/.*/\u&/')"
        cp -r "$(pwd)/.config/${folder_name}" "$HOME/.config/"
        log "$capitalized_folder_name config copied!" "normal"
    done
    sleep 1

    # Copy fonts and scripts
    cp -r "$(pwd)/.local/share/fonts/" "$HOME/.local/share/fonts"
    log "Font copied!" "normal"

    cp -r "$(pwd)/.local/bin/" "$HOME/.local/"
    log "Scripts copied!" "normal"
    sleep 1
}

while true; do
    clear
    log "$title\n$subtitle" "plain"
    echo
    read -p ":: Continue? (Y/n) > " -n 1 -r
    echo

    response="${REPLY:-Y}"

    case $response in
    [Yy])
        # Create necessary directories
        log "Creating necessary directories..." "warning"
        log "Creating font folder..." "normal"
        mkdir -p "$HOME/.local/share/fonts"
        sleep 1

        log "Creating script folder" "normal"
        mkdir -p "$HOME/.local/bin"
        sleep 1

        log "Setting up rice..." "warning"
        rice_setup
        sleep 1

        log "Installation complete. Enjoy your rice!" "success"
        break
        ;;
    [Nn])
        # If the user inputs N or n
        log "Operation canceled" "error"
        exit 1
        ;;
    *)
        # If the user enters an input other than Y, N, or when a key other than 'Enter' is pressed
        log "Invalid input. Please enter 'y' or 'n'" "error"
        sleep 3
        ;;
    esac
done
