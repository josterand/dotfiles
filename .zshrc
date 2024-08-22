# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

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

# PowerLevel10K Theme
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
source ~/Applications/powerlevel10k/powerlevel10k.zsh-theme

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
