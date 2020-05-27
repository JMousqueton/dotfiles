autoload -U compinit colors vcs_info
colors
compinit

REPORTTIME=3
HISTFILE=~/.zhistory
HISTSIZE=10000
SAVEHIST=10000
setopt INC_APPEND_HISTORY
setopt EXTENDED_HISTORY
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt CORRECT_ALL

export CLICOLOR=1
alias ls="ls -G"
alias ll='ls -lapi'
alias python='python3'
alias pip='pip3'

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
