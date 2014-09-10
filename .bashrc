# Enable custom scripts in ~/bin/
export PATH=$HOME/bin:$PATH

# Make svn diff colours work
export TERM=xterm-color

# Make directories more visible on a black background: i.e. light blue, not dark blue
#export LS_COLORS=$(echo $LS_COLORS|sed 's/di=01;34/di=01;36/')
eval $(dircolors|sed 's/di=01;34/di=01;36/')
