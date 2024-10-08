# Oh My Zsh
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="gnzh"

plugins=(git)

source $ZSH/oh-my-zsh.sh

# Ignore case when autocompleting
autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

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
alias ls="ls -llah --color=auto"
alias gimme="sudo chown -R $USER:$USER"
alias gc="git checkout"
alias please="echo 'Of course.' && sudo"

# Python Aliases
alias pip="pip3"
alias py="python3"

# Node.js
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                   # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion
alias npm="pnpm"
alias npx="pnpm dlx"

# Golang
export PATH=$PATH:/usr/local/go/bin
export GOPATH="$HOME/go"
export PATH="$GOPATH/bin:$PATH"

# Java
export PATH="$HOME/.sdkman/candidates/java/current/bin/java:$PATH"
export JAVA_HOME=$HOME/.sdkman/candidates/java/current/bin/java
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
alias tomcat="$HOME/.sdkman/candidates/tomcat/current/bin/catalina.sh"

# System Preferences
export EDITOR="micro"
alias ccache="sync && echo 3 | sudo tee /proc/sys/vm/drop_caches"
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Terraform
alias terraform='docker run --user $(id -u):$(id -g) --rm -v $(pwd):/data -w /data -t hashicorp/terraform:1.5.7'
alias tf="terraform"
alias tflint="docker run --rm -v $(pwd):/data -t ghcr.io/terraform-linters/tflint"

# Postgres
alias quickpg="docker run --rm -p 5432:5432 -e POSTGRES_PASSWORD="postgres" -e POSTGRES_USER="postgres" -e POSTGRES_DB="postgres" postgres:16"

# SMTP
alias quicksmtp="docker run --rm -p 1080:1080 -p 1025:1025 maildev/maildev"

# pnpm
export PNPM_HOME="$HOME/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
