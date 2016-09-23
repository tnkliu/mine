# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/bin

export PATH

# Golang
export GOROOT=/storage/server/go
export GOPATH=/storage/server/gopath
export GOBIN=$GOROOT/bin:$GOPATH/bin
export PATH=$PATH:$GOBIN

# Node
export NODE_PATH=/storage/server/nodejs
export PATH=$PATH:$NODE_PATH/bin

# Alias
alias vi='/storage/server/vim/bin/vim'
alias vim='/storage/server/vim/bin/vim'
alias gll='ls -lha'
