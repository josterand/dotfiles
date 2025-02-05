# ***************************************************
# Author: Jonathan Steve Roland (josterand)
# Github: https://github.com/josterand
#
# This project is licensed under the MIT License.
# Copyright (c) 2024 Jonathan Steve Roland (josterand).
# For detailed terms and conditions, please refer to
# the LICENSE file included with this project.
# ***************************************************

# Created by josterand for 5.8.1

# Prompt Configuration
PROMPT='%B%F{green}%n@%m%F{blue}:%~%f%b $ '

# Common Aliases
alias ..='cd ..'
alias ~='cd ~'
alias c='clear'
alias ls='ls -lah'
alias dot='cd ~/dotfiles'
alias fetch='neofetch'
alias pip='pip3'
alias python='python3'
alias zreload='source ~/.zshrc'
alias zconfig='nano ~/.zshrc'

# Git Aliases
alias gi='git init'
alias gs='git status'
alias gco='git checkout'
alias gcob='git checkout -b'
alias gp='git push'
alias gpl='git pull'
alias gm='git merge'
alias ga='git add'
alias gaa='git add .'
alias gc='git commit -m'
alias glg='git log --graph --oneline --decorate --all'

# System maintenance
# Debian-based distros uncomment below
alias update='sudo apt update && sudo apt upgrade -y'
# Arch-based distros uncomment below
#alias update='sudo pacman -Syu'
alias cleanaptorphan='sudo apt purge --autoremove $(deborphan)'
alias cleanapt='sudo apt autoremove && sudo apt autoclean'
alias purgeapt='sudo apt purge'
alias purgeaptcf='sudo apt purge --autoremove'

# Keybindings
# Move cursor one word at a time
bindkey "\e[1;5C" forward-word
bindkey "\e[1;5D" backward-word

# Move cursor one line at a time
bindkey "\e[1;5A" up-line-or-history
bindkey "\e[1;5B" down-line-or-history
