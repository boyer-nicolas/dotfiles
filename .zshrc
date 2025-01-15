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
alias gno="git add . && git commit --no-verify && git push"

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

alias npm="echo 'Did you mean pnpm '"
alias npx="pnpm exec"
alias yarn="echo 'Did you mean pnpm '"
alias nvm="echo 'Did you mean fnm '"

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
FNM_PATH="/Users/nicolasboyer/Library/Application Support/fnm"
if [ -d "$FNM_PATH" ]; then
    export PATH="/Users/nicolasboyer/Library/Application Support/fnm:$PATH"
    eval "$(fnm env)"
fi

eval "$(fnm env --use-on-cd --shell zsh)"
