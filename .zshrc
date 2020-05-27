setopt NO_BG_NICE # don't nice background tasks
setopt NO_HUP
setopt NO_LIST_BEEP
setopt LOCAL_OPTIONS # allow functions to have local options
setopt LOCAL_TRAPS # allow functions to have local traps
setopt EXTENDED_HISTORY # add timestamps to history
setopt PROMPT_SUBST
setopt CORRECT
setopt COMPLETE_IN_WORD
setopt IGNORE_EOF

# History
export HISTFILE=~/.zhistory
export HISTSIZE=4096
export SAVEHIST=4096


export ERL_AFLAGS="-kernel shell_history enabled"
setopt HIST_VERIFY
setopt APPEND_HISTORY # adds history
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY  # adds history incrementally and share it across sessions
setopt HIST_IGNORE_ALL_DUPS  # don't record dupes in history
setopt HIST_REDUCE_BLANKS


# makes color constants available
autoload -U colors
colors

# enable colored output from ls, etc. on FreeBSD-based systems
export CLICOLOR=1


export colorflag="-G"
export LSCOLORS='BxBxhxDxfxhxhxhxhxcxcx'
alias ls="ls -G"
alias ll='ls -lapi'

# Editor
export VISUAL=vim
export EDITOR=$VISUAL

alias python='python3'
alias pip='pip3'

# Flush Directory Service cache
alias flush="dscacheutil -flushcache && killall -HUP mDNSResponder"

# Show active network interfaces
alias ifactive="ifconfig | pcregrep -M -o '^[^\t:]+:([^\n]|\n\t)*status: active'"

# IP addresses
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"

# Clean up LaunchServices to remove duplicates in the “Open With” menu
alias lscleanup="/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user && killall Finder"

# Recursively delete `.DS_Store` files
alias cleanup="find . -type f -name '*.DS_Store' -ls -delete"

# Lock the screen (when going AFK)
alias afk="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
