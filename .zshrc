# Aliasses
alias fm='yazi'
alias fh='neofetch'
alias lst='ls -Ah -go --si --time-style=long-iso --group-directories-first --indicator-style=slash --color=always'
alias fstow='stow -d $HOME/dotfiles .'
alias dstow='stow -D -d $HOME/dotfiles .'
alias rstow='stow -D -d $HOME/dotfiles . && stow -d $HOME/dotfiles .'

# PATHs
export PATH=/home/josterand/Emulated/bin:$PATH

# ZSH Themes
source ~/.zsh/themes/steeef.zsh-theme

# ZSH Plugins (Should be at the end of this file)
source /home/josterand/.zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh
source /home/josterand/.zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh
source /home/josterand/.zsh/plugins/zsh-you-should-use/zsh-you-should-use.plugin.zsh