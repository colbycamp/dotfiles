# EXPORTS
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH=~/.local/bin:$PATH
export PATH=$HOME/go/bin:$PATH

eval "$(rbenv init -)"

if [ "$PS1" ]; then
    # fancy prompt
    BLACK=$(tput setaf 0)
    RED=$(tput setaf 1)
    GREEN=$(tput setaf 2)
    LIME_YELLOW=$(tput setaf 190)
    YELLOW=$(tput setaf 3)
    POWDER_BLUE=$(tput setaf 153)
    BLUE=$(tput setaf 4)
    MAGENTA=$(tput setaf 5)
    CYAN=$(tput setaf 6)
    WHITE=$(tput setaf 7)
    BRIGHT=$(tput bold)
    NORMAL=$(tput sgr0)
    BLINK=$(tput blink)
    REVERSE=$(tput smso)
    UNDERLINE=$(tput smul)
    PS1="\[${CYAN}\]\w \[${NORMAL}\]$ "
fi

# SHOW GIT BRANCH
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
export PS1="\[${BLUE}\][\@] \[${MAGENTA}\]\u@\h\[${CYAN}\] \W \[${RED}\]\$(parse_git_branch) \[\033[00m\]$\[\033[00m\] "
