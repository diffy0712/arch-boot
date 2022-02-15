# @see https://github.com/scop/bash-completion
[ -r /usr/share/bash-completion/bash_completion ] && . /usr/share/bash-completion/bash_completion

# @see https://www.linuxjournal.com/content/using-bash-history-more-efficiently-histcontrol
export HISTCONTROL=ignoreboth:erasedups

# default editor
VISUAL=vim; export VISUAL EDITOR=vim; export EDITOR

# Allows you to cd into directory merely by typing directory name
shopt -s autocd

# Add date and time to bash history
HISTTIMEFORMAT="%y/%m/%d %T "

if [ -d "$HOME/.bin" ] ;
  then PATH="$HOME/.bin:$PATH"
fi

if [ -d "$HOME/.local/bin" ] ;
  then PATH="$HOME/.local/bin:$PATH"
fi

#ignore upper and lowercase when TAB completion
bind "set completion-ignore-case on"

[[ -f ~/.config/bash/prompt.sh ]] && . ~/.config/bash/prompt.sh
[[ -f ~/.config/bash/shopt.sh ]] && . ~/.config/bash/shopt.sh
[[ -f ~/.config/bash/alias.sh ]] && . ~/.config/bash/alias.sh
[[ -f ~/.config/bash/helper.sh ]] && . ~/.config/bash/helper.sh
