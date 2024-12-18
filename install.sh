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
rice_name="dotfiles"
rice_dir="$HOME/${rice_name}"
date=$(date "+%Y%m%d-%H%M%S")
backup_dir="$HOME/Backups/Bspwm/$(whoami)/Backup-${date}"
dependencies=(
    "alacritty"
    "bspwm"
    "dunst"
    "sxhkd"
    "polybar"
    "rofi"
)

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
    log "Checking dependencies" "info"
    for dep in "${dependencies[@]}"; do
        if ! command -v "$dep" &>/dev/null; then
            log "Error: package $dep not found. Please install it first!" "error"
            exit 1
        fi
        log "$dep is already installed. Good..." "normal"
    done
    log "All dependencies are installed!" "success"
}

rice_backup() {
    log "Backing up configuration files" "info"
    mkdir -p $backup_dir
    for pkg in "${dependencies[@]}"; do
        if [ ! -d "$HOME/.config/${pkg}" ]; then
            log "$pkg configuration not exist" "normal"
        else
            log "$pkg configuration exist. Backing up the configuration" "normal"
            mv $HOME/.config/${pkg} $backup_dir
        fi
    done
}

# Function to copy dotfiles
rice_setup() {
    log "Installing the rice..." "info"
    log "Detecting configuration folders" "info"
    subfolders=()
    for subfolder in "$rice_dir/.config"/*/; do
        [ -d "$subfolder" ] && subfolders+=("$(basename "$subfolder")")
        log "$subfolder configuration detected!" "normal"
    done

    for folder in "${subfolders[@]}"; do
        log "Copying $folder configurations..." "normal"
        cp -r "$rice_dir/.config/${folder}" "$HOME/.config/"
    done
}

# ==============
# Main execution
# ==============
while true; do
    clear
    log "The installation process is about to begin. Do you want to continue? (Y/n)" "normal"
    read -p "> " -n 1 -r
    echo

    response="${REPLY:-Y}"

    case $response in
    [Yy])
        # If the user inputs Y or y
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
