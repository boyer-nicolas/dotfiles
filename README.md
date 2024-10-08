# Dotfiles, my Linux installation guide

## ZSH
- Debian
```bash
sudo apt install -y git zsh zip unzip micro
```

- Fedora
```bash
sudo dnf install -y git zsh zip unzip micro
```

- Arch
```bash
sudo pacman -Syu git zsh zip unzip openssh micro
```

## MacOS
```zsh
# Install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

## OMZ
```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
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

## SDKMan! (Java)
- Install
```bash
curl -s "https://get.sdkman.io" | bash
```
- Install Java
```bash
sdk install java
sdk install maven
sdk install tomcat
sdk install quarkus
```

## Arch specifics
- Yay Package Manager
```bash
sudo pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
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
