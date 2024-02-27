# Oh My Zsh
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="gnzh"
plugins=(git zsh-autosuggestions)
source $ZSH/oh-my-zsh.sh

# Docker Aliases
alias dc="docker compose"
alias du="dc up --remove-orphans"
alias dup="dc up -d --remove-orphans"
alias ddown="dc down -v --remove-orphans"

# Git Aliases
alias gs="git status"
alias g="git add . && git commit && git push"
alias gno="git add . && git commit --no-verify && git push"

# Filesystem Aliases
alias rmdir="sudo rm -rf"
alias ls="ls -llah"
alias gimme="sudo chown -R $USER:$USER"
alias gc="git checkout"

# Python Aliases
alias pip="pip3"
alias py="python3"

# Node.js
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Golang
export PATH=$PATH:/usr/local/go/bin
export GOPATH="$HOME/go"
export PATH="$GOPATH/bin:$PATH"

# Java
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
export JAVA_HOME="$SDKMAN_DIR/candidates/java/current/bin/java"
export PATH="$JAVA_HOME:$PATH"
alias tomcat="$SDKMAN_DIR/candidates/tomcat/current/bin/catalina.sh"

# System Preferences
export EDITOR="micro"
alias ccache="sync && echo 3 | sudo tee /proc/sys/vm/drop_caches"
