# Enable custom scripts in ~/bin/
export PATH=$HOME/bin:$PATH

# Make svn diff colours work
export TERM=xterm-color

# (Linux) Make directories more visible on a black background: i.e. light blue, not dark blue
#export LS_COLORS=$(echo $LS_COLORS|sed 's/di=01;34/di=01;36/')
#eval $(dircolors|sed 's/di=01;34/di=01;36/')

# Aliases for Linux
#alias ls="ls --color"
#alias ssh="ssh -A"

# Aliases for Mac
alias ls="ls -G"

# Prompt for Mac
export PS1="[Mac] \w \$ "

export PATH=~/dev/linux-scripts:$PATH
