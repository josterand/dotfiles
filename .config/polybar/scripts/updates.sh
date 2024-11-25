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

# This module depends on the `pacman-contrib` (extra) package.

# Check Pacman updates
if ! arch_updates=$(checkupdates 2> /dev/null | wc -l ); then
    arch_updates=0
fi

# Check for AUR helper updates
# If you are using an AUR helper other than yay,
# please use one of these lines of code by uncommenting them.
if ! aur_updates=$(yay -Qum 2> /dev/null | wc -l); then
## if ! aur_updates=$(paru -Qum 2> /dev/null | wc -l); then
## if ! aur_updates=$(cower -u 2> /dev/null | wc -l); then
## if ! aur_updates=$(trizen -Su --aur --quiet | wc -l); then
## if ! aur_updates=$(pikaur -Qua 2> /dev/null | wc -l); then
## if ! aur_updates=$(rua upgrade --printonly 2> /dev/null | wc -l); then
    aur_updates=0
fi

# Show update status on the bar
updates=$((arch_updates + aur_updates))
if [ "$updates" -gt 0 ]; then
    echo " $updates Updates!"
else
    echo " Updated"
fi
