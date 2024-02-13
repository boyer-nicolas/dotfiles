# Dotfiles, my Linux installation guide

## ZSH
- Debian
```bash
sudo apt install -y git zsh zip unzip
```

- Fedora
```bash
sudo dnf install -y git zsh zip unzip
```

- Arch
```bash
sudo pacman -Syu git zsh zip unzip openssh
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
