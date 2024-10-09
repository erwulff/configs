alias ll='ls -laFh'
alias lss='ls -lASrh'
export HISTSIZE=10000

# export PS1="\e[1;36m\u@\h\e[0m \W \t \e[1;32m\$ \e[0m"
rightprompt()
{
    printf "%*s" $COLUMNS "$(date '+%Y-%m-%d %H:%M:%S')"
}

# prompt
# export PS1="\[\033[0;36m\]\u@\h\[\033[0m\] \w \n\[\033[01;32m\]\$ \[\033[0m\]"
# PROMPT_COMMAND="PS1='\[$(tput sc; rightprompt; tput rc)\]${PS1}'"

# prompt with git branch
source ~/.git-prompt.sh  # get script from https://github.com/git/git/blob/master/contrib/completion/git-prompt.sh
function parse_conda_env () {
    if [ ! -z "$CONDA_DEFAULT_ENV" ]
    then
            echo "($(basename "$CONDA_DEFAULT_ENV")) "
    fi
}
PROMPT_COMMAND='__git_ps1 "\[$(tput sc; rightprompt; tput rc)\]\[\033[0;36m\]\u@\h\[\033[0m\] \w" \
        "\n$(parse_conda_env) \[\033[01;32m\]\$ \[\033[0m\]" "\[\033[38;2;193;156;0m\] %s \[\033[0m\]"'

bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'
