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

eval "$(zoxide init zsh)"

# highlight command if found / not found
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# suggest previous commands like fish
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# zsh parameter completion for the dotnet CLI
_dotnet_zsh_complete()
{
  local completions=("$(dotnet complete "$words")")
  # If the completion list is empty, just continue with filename selection
  if [ -z "$completions" ]
  then
    _arguments '*::arguments: _normal'
    return
  fi
  # This is not a variable assignment, don't remove spaces!
  _values = "${(ps:\n:)completions}"
}
compdef _dotnet_zsh_complete dotnet
