# Dotfiles, my shell installation guide

## HomeBrew
```zsh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

## Micro
```zsh
# Micro editor
brew install micro
# Orbstack
brew install --cask orbstack
```

## Starship.rs
```bash
curl -sS https://starship.rs/install.sh | sh
```

## ZSH Autosuggestions
```bash
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
```

## ZSH Syntax Highlighting
```bash
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.zsh/zsh-syntax-highlighting
```

## NVM (Node.js)
- Install
```bash
# Install NVM
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash

# Install Node.js LTS
nvm install --lts

# Use Node.js LTS
nvm use --lts

# Install pnpm
npm i -g pnpm
```

## ZSH rc
Copy the contents of [the base ~/.zshrc file](./.zshrc)

## Just to remember
> [!NOTE]  
> Highlights information that users should take into account, even when skimming.

> [!TIP]
> Optional information to help a user be more successful.

> [!IMPORTANT]  
> Crucial information necessary for users to succeed.

> [!WARNING]  
> Critical content demanding immediate user attention due to potential risks.

> [!CAUTION]
> Negative potential consequences of an action.
