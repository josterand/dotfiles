PROMPT="%(?:%{$fg_bold[green]%}%1{➜%} :%{$fg_bold[red]%}%1{➜%} ) %{$fg[cyan]%}%c%{$reset_color%}"
PROMPT+=' $ '

# PATH Configurations
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:$HOME/emulated/bin
export ZSH="$HOME/.oh-my-zsh"

# Aliasses
alias fm='yazi'
alias fh='neofetch'
alias list='ls -Ah -go --si --time-style=long-iso --group-directories-first --indicator-style=slash --color=always'
alias fstow='stow -d $HOME/dotfiles .'
alias dstow='stow -D -d $HOME/dotfiles .'
alias rstow='stow -D -d $HOME/dotfiles . && stow -d $HOME/dotfiles .'

# Oh My ZSH
ZSH_THEME="robbyrussell"
source $ZSH/oh-my-zsh.sh

# ZSH Plugins (Should be at the end of this file)
source /home/josterand/.zsh-user-plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh
source /home/josterand/.zsh-user-plugins/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh
source /home/josterand/.zsh-user-plugins/zsh-you-should-use/zsh-you-should-use.plugin.zsh