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

## OMZ
```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

## ZSH Autosuggestions
- Install
```bash
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

- Add to ~/.zshrc
```bash
plugins=( 
    # other plugins...
    zsh-autosuggestions
)
```

## ZSH rc
Copy the contents of [the base ~/.zshrc file](./.zshrc)

## NVM (Node.js)
- Install
```bash
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
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
