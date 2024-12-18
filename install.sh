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
user=$(whoami)
rice_name="dotfiles"
rice_dir="~/${rice_name}"
backup_dir="~/Backup/${user}'s Rice"
dependencies=()

log "Rice directory: $rice_dir" "normal"
sleep 1

for configs in "$rice_dir/.config"/*/; do
        [ -d "$configs" ] && subfolders+=("$(basename "$configs")")
        log "$configs configuration detected!" "normal"
    done

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
    info)
        echo -e "${bold}\033[34m:: ${txt}${reset}" # Blue
        ;;
    success)
        echo -e "${bold}\033[32m:: ${txt}${reset}" # Green
        ;;
    normal)
        echo -e "${bold}:: ${txt}${reset}" # Plain
        ;;
    *)
        return 1
        ;;
    esac
}

# Check if dependencies are installed
pkg_check() {
    log "Checking dependencies" "normal"
    for dep in "${dependencies[@]}"; do
        if ! command -v "$dep" &>/dev/null; then
            log "Error: package $dep not found. Please install it first!" "error"
            exit 1
        fi
        log "$dep is already installed. Good..." "normal"
        sleep 1
    done
    log "All dependencies are installed!" "success"
}

# Check if folder exists
rice_backup() {
    log "Backing up configuration files" "normal"
    mkdir $backup_dir
    for pkg in "${dependencies[@]}"; do
        if [ ! -d "~/.config/${pkg}" ]; then
            log "$pkg configuration not exist" "normal"
        else
            log "$pkg configuration exist. Backing up the configuration" "normal"
            mv ~/.config/${pkg} $backup_dir
        fi
    done
}

# Function to copy dotfiles
rice_setup() {
    log "installing the rice..." "normal"
    log "detecting configuration folders" "normal"
    subfolders=()

    for folder in "${subfolders[@]}"; do
        log "Copying $folder configurations..." "normal"
        cp "$rice_dir/.config/${folder}" "~/.config/"
    done
    log "Rice installation" "success"
}

# ==============
# Main execution
# ==============
while true; do
    clear
    log "The installation process is about to begin. Do you want to continue? (Y/n)" "info"
    read -p "> " -n 1 -r
    echo

    response="${REPLY:-Y}"

    case $response in
    [Yy])
        # If the user inputs Y or y
        log "Backing up your previous configurations..." "normal"
        pkg_check
        rice_backup
        rice_setup
        log "Installation complete. Enjoy your rice!" "success"
        break
        ;;
    [Nn])
        # If the user inputs N or n\
        log "Operation canceled" "error"
        exit 1
        ;;
    *)
        # If the user enters an input other than Y, N, or when a key other than 'Enter' is pressed.
        log "Invalid input. Please enter 'y' or 'n'" "error"
        sleep 3
        ;;
    esac
done
