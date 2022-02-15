# Easier navigation: .., ..., ...., ....., ~ and -
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
# alias --="cd -"

alias mkdir="mkdir -p"


alias ls="lsd"

# List all files colorized in long format
alias l="ls -lF"

# List all files colorized in long format, excluding . and ..
alias la="ls -laF"

#fix obvious typo's
alias cd..='cd ..'
alias pdw="pwd"

## Colorize the grep command output for ease of use (good for log files)##
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

#readable output
alias df='df -h'

#free
alias free="free -mt"

#continue download
alias wget="wget -c"

#userlist
alias userlist="cut -d: -f1 /etc/passwd"

#ps
alias psa="ps auxf"

#hardware info --short
alias hw="hwinfo --short"

#get the error messages from journalctl
alias jctl="journalctl -p 3 -xb"

# Reload the shell (i.e. invoke as a login shell)
alias reload="exec ${SHELL} -l"

# Print each PATH entry on a separate line
alias path='echo -e ${PATH//:/\\n}'

# confirm before overwriting something
alias cp="cp -i"
alias c="clear"