#!/bin/sh

# ***************************************************
# Author: Jonathan Steve Roland (josterand)
# Github: https://github.com/josterand
#
# This project is licensed under the MIT License.
# Copyright (c) 2024 Jonathan Steve Roland (josterand).
# For detailed terms and conditions, please refer to
# the LICENSE file included with this project.
# ***************************************************

# This module check for pacman package updates and AUR package updates.
# This module depends on the `pacman-contrib` (extra) package.

# Function to check updates and return count
check_updates() {
    local updates
    updates=$(eval "$1" 2> /dev/null | wc -l)
    echo "${updates:-0}"
}

# Check Pacman updates
arch_updates=$(check_updates "checkupdates")

# Check for AUR helper updates
# If you are using an AUR helper other than yay,
# please use one of these lines of code by uncommenting them.
aur_updates=$(check_updates "yay -Qum")
## aur_updates=$(check_updates "paru -Qum")
## aur_updates=$(check_updates "cower -u")
## aur_updates=$(check_updates "trizen -Su --aur --quiet")
## aur_updates=$(check_updates "pikaur -Qua")
## aur_updates=$(check_updates "rua upgrade --printonly")

# Show update status on the bar
updates=$((arch_updates + aur_updates))
if [ "$updates" -gt 0 ]; then
    echo "%{T3}  %{T2}$updates Updates!"
else
    echo "%{T3}  %{T2}Updated"
fi
