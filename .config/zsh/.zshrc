# Lines configured by zsh-newuser-install
HISTFILE=~/.local/HISTFILE
HISTSIZE=10000
SAVEHIST=10000
CASE_SENSITIVE="false"
setopt autocd extendedglob nomatch
unsetopt beep
# bindkey -v
# End of lines configured by zsh-newuser-install

autoload -Uz compinit && compinit
# match any case insensitive
# zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

# match insensitive if there are no other results
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}'



# start x
if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
	startx
fi

# prompt
eval "$(starship init zsh)"

# aliases
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/shell/aliasrc" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/shell/aliasrc"

# allow reverse searching
bindkey "^R" history-incremental-search-backward
