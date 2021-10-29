# Enable custom scripts in ~/bin/
export PATH=$HOME/bin:$PATH

# Make svn diff colours work
export TERM=xterm-color

# (Linux) Make directories more visible on a black background: i.e. light blue, not dark blue
#export LS_COLORS=$(echo $LS_COLORS|sed 's/di=01;34/di=01;36/')
#eval $(dircolors|sed 's/di=01;34/di=01;36/')

# Aliases for Linux
alias ls="ls --color"

# Aliases for Mac
#alias ls="ls -G"

# Prompt for Mac
#export PS1="[Mac] \w \$ "

export PATH=~/dev/linux-scripts:$PATH

# Avoid duplicates
export HISTCONTROL=ignoredups:erasedups
# When the shell exits, append to the history file instead of overwriting it
shopt -s histappend

# Eternal bash history.
# ---------------------
# Undocumented feature which sets the size to "unlimited".
# http://stackoverflow.com/questions/9457233/unlimited-bash-history
export HISTFILESIZE=
export HISTSIZE=
export HISTTIMEFORMAT="[%F %T] "
# Change the file location because certain bash sessions truncate .bash_history file upon close.
# http://superuser.com/questions/575479/bash-history-truncated-to-500-lines-on-each-login
export HISTFILE=~/.bash_eternal_history
# Force prompt to write history after every command.
# http://superuser.com/questions/20900/bash-history-loss
#PROMPT_COMMAND="history -a; $PROMPT_COMMAND"

# After each command, append to the history file and reread it
export PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND$'\n'}history -a; history -c; history -r"

