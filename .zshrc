# aliases
alias ll='ls -lah'
alias lss='ls -lASrh'


# AUTOCOMPLETION
# initialize autocompletion
autoload -U compinit && compinit

# history setup
setopt SHARE_HISTORY
HISTFILE=$HOME/.zhistory
SAVEHIST=1000
HISTSIZE=999
setopt HIST_EXPIRE_DUPS_FIRST

# autocompletion using arrow keys (based on history)
bindkey '\e[A' history-search-backward
bindkey '\e[B' history-search-forward


# Promt definition
autoload -Uz vcs_info
precmd() { vcs_info }

zstyle ':vcs_info:git:*' formats '%b '

setopt PROMPT_SUBST

NEWLINE=$'\n'
PROMPT='%F{#60fdff}%B%n%b%f %~ %F{red}${vcs_info_msg_0_}%f ${NEWLINE}%F{#06e517}$%f '
RPROMPT='%D %T'


# ls colors
export CLICOLOR=1
export LSCOLORS='Gxfxcxdxbxegedabagacad'
