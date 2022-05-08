## Aliases, functions, transient shell options go here. ##
# Colorize shell output.
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
# To be able to call __git_ps1
source ~/.git-prompt.sh
# Design of shell prompt.
export PS1='\[\e[1;33m\]\u \[\e[1;36m\]\w$(__git_ps1 " \[\e[1;34m\](%s)\[\e[0;0m\]")\[\e[1;33m\]\$ \[\e[0;0m\]'

####################
## Aliases
####################
alias vi="vim"
alias sl="ls"
alias l='ls -CF'
alias la='ls -A'
alias ll='ls -alhF'
alias c='clear'

alias cd..='cd ..'
alias ..='cd ..'

# Sort by file size. First one for linux, second one
# for Mac.
# alias lt='ls --human-readable --size -1 -S --classify'
alias lt='du -sh * | sort -h'

# Sort by modification time.
alias left='ls -t -1'

# Count files.
alias count='find . -type f | wc -l'

# View only mounted drives.
alias mnt="mount | awk -F' ' '{ printf \"%s\t%s\n\",\$1,\$3; }' | column -t | egrep ^/dev/ | sort"

# Find a used command in history with grep.
alias gh='history | grep'

# Cd to the top level directory of a git project.
# mnemonic: git root
alias gr='cd `git rev-parse --show-toplevel`'

alias grep='grep --color=auto'

alias h='history'
alias j='jobs -l'
alias df='df -H'

# Backup untracked files in a git repo.
alias backuput='git ls-files --others --exclude-standard -z |\
xargs -0 tar rvf ~/backup-untracked.zip'
# Search for something in a git repo.
# Usage: gs 'import'
alias gs='git rev-list --all | xargs git grep -F'

#############
# Functions
#############
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
