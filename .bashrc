## Aliases, functions, transient shell options go here. ##

# Colorize shell output.
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
# To be able to call __git_ps1
source ~/.git-prompt.sh
# Design of shell prompt.
export PS1='\[\e[1;33m\]\u \[\e[1;36m\]\w$(__git_ps1 " \[\e[1;34m\](%s)\[\e[0;0m\]")\[\e[1;33m\]\$ \[\e[0;0m\]'

### Aliases ###
alias srcprf="source ~/.bash_profile"
alias vi="vim"
alias sl="ls"
alias l='ls -CF'
alias la='ls -A'
alias ll='ls -alhF'
alias c='clear'
alias cd..='cd ..'
alias ..='cd ..'
alias grep='grep --color=auto'
alias h='history'
# Find a used command in history with grep.
alias gh='history | grep'

# Cd to the top level directory of a git project.
# mnemonic: git root
alias gr='cd `git rev-parse --show-toplevel`'

# Activate python virtualenv environment.
alias srcvenv="source venv/bin/activate"

### Functions ###
# Cd and list files in that directory.
function cl() {
    DIR="$*";
        # if no DIR given, go home
        if [ $# -lt 1 ]; then
                DIR=$HOME;
    fi;
    builtin cd "${DIR}" && \
    # use your preferred ls command
        l
}

# Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/"
[ -n "$PS1" ] && \
    [ -s "$BASE16_SHELL/profile_helper.sh" ] && \
        eval "$("$BASE16_SHELL/profile_helper.sh")"
