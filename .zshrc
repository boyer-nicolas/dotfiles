# Starship
eval "$(starship init zsh)"

# Ignore case when autocompleting
fpath=(~/.zsh $fpath)
autoload -Uz compinit
compinit -u
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

# Docker Aliases
alias dc="docker compose"
alias du="dc up --remove-orphans"
alias dup="dc up -d --remove-orphans"
alias ddown="dc down -v --remove-orphans"

# Git Aliases
alias gs="git status"
alias g="git add . && git commit && git push"
alias gno="git add . && git commit && git push"

# Filesystem Aliases
alias rmdir="rm -rf"
alias ls="ls -al --color"
alias gimme="chown -R $USER:$USER"
alias gc="git checkout"
alias please="echo 'Of course.' && sudo"

export PNPM_HOME="$HOME/Library/pnpm"
case ":$PATH:" in
*":$PNPM_HOME:"*) ;;
*) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

if command -v pnpm 2>&1 >/dev/null; then
    alias npm="pnpm"
fi

# Python
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# Golang
export PATH=$PATH:/usr/local/go/bin
export GOPATH="$HOME/go"
export PATH="$GOPATH/bin:$PATH"

# System Preferences
export EDITOR="micro"
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Terraform
alias tf="terraform"

# Postgres
alias quickpg="docker run --rm \
-p 5432:5432 \
-e POSTGRES_PASSWORD="postgres" \
-e POSTGRES_USER="postgres" \
-e POSTGRES_DB="postgres" \
postgres:16"

# SMTP
alias quicksmtp="docker run --rm \
-p 8025:8025 \
-p 1025:1025 \
axllent/mailpit"

# fnm
eval "$(fnm env --use-on-cd --shell zsh)"

# bun completions
[ -s "${HOME}/.bun/_bun" ] && source "${HOME}/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# Created by `pipx` on 2025-01-15 16:18:17
export PATH="$PATH:${HOME}/.local/bin"

export LANG=en_US.UTF-8

export PATH="/opt/homebrew/bin:$PATH"
