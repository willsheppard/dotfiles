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
# Aliases for Linux
alias ls="ls --color"

# Prompt for Dell
export PS1="\[\e[1;32m\]Dell\[\e[0m\] [\A\$(jobs | awk '{ print \$3 }' | tr '\n' '|' | awk '{ print \"\[\033[1;31m|\]\" \$1 \"\[\033[0m\]\" }') \[\033[1;36m\]\$(git branch 2>/dev/null | grep '*' | cut -c 3-)\[\033[0m\] \W$] "

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
# (need this to NOT change history within each session/terminal console window)
#export PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND$'\n'}history -a; history -c; history -r"

# TODO: Install keychain. Example output:
#    * keychain 2.8.5 ~ http://www.funtoo.org
#    * Found existing ssh-agent: 32340
#    * Adding 1 ssh key(s): ....
#    * ssh-add: Identities added: ...

# ssh keys
#job=broadbean
#/usr/bin/keychain --nogui ~/.ssh/id_rsa.$job"_puppet"
#/usr/bin/keychain --nogui ~/.ssh/id_rsa.$job"_bitbucket"
#source $HOME/.keychain/$HOSTNAME-sh

