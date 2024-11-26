# Add deno completions to search path
if [[ ":$FPATH:" != *":/Users/nicolasboyer/completions:"* ]]; then export FPATH="/Users/nicolasboyer/completions:$FPATH"; fi
# Oh My Posh
eval "$(oh-my-posh init zsh --config ~/mytheme.omp.json)"

# Ignore case when autocompleting
fpath=(~/.zsh $fpath)
autoload -Uz compinit
compinit -u
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

# alias docker="podman"

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

# Python Aliases
alias pip="pip3"
alias py="python3"

# Node.js
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                   # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion
alias npm="echo 'Did you mean pnpm?'"
alias npx="pnpm exec"
alias bun="echo 'Did you mean pnpm?'"
alias yarn="echo 'Did you mean pnpm?'"

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

export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

export DOCKER_BUILDKIT=1

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/nicolasboyer/Dev/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/nicolasboyer/Dev/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/nicolasboyer/Dev/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/nicolasboyer/Dev/google-cloud-sdk/completion.zsh.inc'; fi

export PATH="/Users/nicolasboyer/.local/bin:$PATH"

export GOOGLE_APPLICATION_CREDENTIALS="$HOME/.config/gcloud/application_default_credentials.json"
