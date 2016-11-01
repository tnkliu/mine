# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/bin

export PATH

# Mine
#export PATH=/storage/bin:$PATH

# Golang
export GOROOT=/storage/server/go
export GOPATH=/storage/server/gopath
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOROOT/bin:$GOBIN

# Node
export NODE_PATH=/storage/server/nodejs
export PATH=$PATH:$NODE_PATH/bin

# Npm 使用淘宝镜像
npm config set registry https://registry.npm.taobao.org

# Proxy
http_proxy='http://proxy.eventown-inc.com:8080'
https_proxy='http://proxy.eventown-inc.com:8080'
alias set_proxy="export http_proxy; export https_proxy"

# Alias
alias vi='/storage/server/vim/bin/vim'
alias vim='/storage/server/vim/bin/vim'
alias gll='ls -lha'
alias gor='go run'
alias gita='git add .'
alias gitc='git commit -m "Update"'
alias gitd='git difftool'
alias gits='git status'
alias subl='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'
alias cnpm="npm --registry=https://registry.npm.taobao.org --cache=$HOME/.npm/.cache/cnpm --disturl=https://npm.taobao.org/dist --userconfig=$HOME/.cnpmrc"
