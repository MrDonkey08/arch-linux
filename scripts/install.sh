sudo pacman -Syu

# Utility

sudo pacman -S mdcat bat lsd
sudo pacman -S tree
sudo pacman -S locate
paru -S scrub
sudo pacman -S curl wget

# Archiver

sudo pacman -S zip unzip tar
sudo pacman -S p7zip gzip pbzip2
sudo pacman -S git git-lfs git-open

# Converters

sudo pacman -S pandoc-cli
sudo pacman -S txt2tags
sudo pacman -S catdoc

# Cleaners

sudo pacman -S bleachbit

# Compressors

sudo pacman -S imagemagick

# Databases

sudo pacman -S libxcrypt-compat net-tools inetutils # Xampp
sudo pacman -S postgresql

# Drivers

#sudo pacman -S amd-ucode
#sudo pacman -S intel-ucode
sudo pacman -S lib32-mesa

# Math

sudo pacman -S geogebra
sudo pacman -S speedcrunch

# Media

sudo pacman -S spotify-launcher strawberry vlc
sudo pacman -S obs-studio
sudo pacman -S flameshot
#sudo pacman -S nvidia-settings
sudo pacman -S thunar gvfs

# Messengers

sudo pacman -S discord signal-desktop telegram-desktop

# Navigators

sudo pacman -S firefox
yay -S brave-bin

# Network

sudo pacman -S net-tools

# Office

sudo pacman -S libreoffice
sudo pacman -S zathura zathura-pdf-poppler

# Programming Lang

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
rustup update
sudo pacman -S gcc clang
sudo pacman -S python python3 python-pip
sudo pacman -S tk python-pandas python-numpy python-sympy

# Tools

sudo pacman -S bluez bluez-utils
#sudo pacman -S cups # Impressors
sudo pacman -S keepassxc
sudo pacman -S gparted
sudo pacman -S pipewire pipewire-pulse pulseaudio
sudo pacman -S timeshift

# Text Editor

sudo pacman -S nano vim neovim obsidian
sudo pacman -S vscode
yay -S codium
sudo pacman -S texlive texlive-lang

# Terminal

sudo pacman -S kitty
sudo pacman -S zsh zsh-syntax-highlighting zsh-autosuggestions

## Alacritty

sudo pacman -S cmake freetype2 fontconfig pkg-config make libxcb libxkbcommon python
sudo pacman -S scdoc

# Extras

sudo pacman -S neofetch
sudo pacman -S lolcat cowsay
sudo pacman -S noto-fonts noto-fonts-emoji
yay -S ttf-ms-fonts
paru -S ttf-font-awesome ttf-font-awesome-4 ttf-material-design-icons
