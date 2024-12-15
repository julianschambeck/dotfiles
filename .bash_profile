export LANG="en_US.UTF-8"
export VISUAL=vim
export EDITOR="$VISUAL"
export PROMPT_DIRTRIM=2
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
export PS1='\[\033[1;31m\]\u@maverick\[\033[1;37m\]\s:\j \[\033[1;32m\]\w\[\033[1;37m\]\$\[\033[0;0m\] '
# bash vi mode for command editing
set -o vi
# make readline forward search work
bind '"\C-f": forward-search-history'

export PYTHONSTARTUP=~/.pythonrc.py
export prf="/Users/<USER>/.bash_profile"
export rc="/Users/<USER>/.vim/vimrc"

alias vi='vim'
alias l='ls -CF'
alias la='ls -lhFA'
alias ll='ls -lhF'
alias grep='grep --color=auto'
alias so='source $prf'

findg() {
  find . -iname "*$1*" -type f "${@:2}"
}

# get credentials of service instance from service key
cfsk () {
    key=$(cf sk "$1" | tail -n 1 | awk '{print $1}' | xargs -I {} cf service-key "$1" {} | tail -n +3)
    if [[ "$2" == "-u" ]]; then
        echo "$key" | jq '.credentials | {clientid, clientsecret, url}'
    else
        echo "$key" | jq '.credentials'
    fi
}

