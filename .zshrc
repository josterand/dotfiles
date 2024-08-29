# Oh My Zsh
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(git)
source $ZSH/oh-my-zsh.sh

PROMPT="%(?:%{$fg_bold[green]%}%1{➜%} :%{$fg_bold[red]%}%1{➜%} ) %{$fg[cyan]%}%c%{$reset_color%}"
PROMPT+=' $ '

# PATH Configurations
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:$HOME/emulated/bin

# Aliasses
alias fm='yazi'
alias fh='neofetch'
alias ls='ls -Ah -go --si --time-style=long-iso --group-directories-first --indicator-style=slash --color=always'
alias fstow='stow -d $HOME/dotfiles .'
alias dstow='stow -D -d $HOME/dotfiles .'
alias rstow='stow -D -d $HOME/dotfiles . && stow -d $HOME/dotfiles .'

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
