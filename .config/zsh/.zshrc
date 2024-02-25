# Lines configured by zsh-newuser-install
HISTFILE=~/.local/HISTFILE
HISTSIZE=10000
SAVEHIST=10000
setopt autocd extendedglob nomatch
unsetopt beep
# bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall

autoload -Uz compinit
compinit
# End of lines added by compinstall


# start x
if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
	startx
fi

# prompt
eval "$(starship init zsh)"

# aliases
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/shell/aliasrc" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/shell/aliasrc"
