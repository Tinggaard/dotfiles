# Lines configured by zsh-newuser-install
HISTFILE=~/.local/HISTFILE
HISTSIZE=10000
SAVEHIST=10000
setopt autocd extendedglob nomatch
unsetopt beep
# bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/t1ng/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
	startx
fi

eval "$(starship init zsh)"

alias config='git --git-dir=/home/t1ng/dotfiles --work-tree=/home/t1ng'
