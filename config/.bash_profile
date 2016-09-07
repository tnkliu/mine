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
