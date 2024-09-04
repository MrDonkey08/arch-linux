sudo pacman -Syu

# Git

sudo pacman -S git git-lfs
yay -S git-open

## GitHub

### GitHub Pages

#npm install --save-dev --save-exact prettier @shopify/prettier-plugin-liquid
gem install jekyll bundler

# Languages

## Databases

# Xampp
sudo pacman -S libxcrypt-compat net-tools inetutils
# Postgresql
sudo pacman -S postgresql

## Programming

# C/C++
sudo pacman -S gcc clang
# Java
sudo pacman -S jdk-openjdk
# Python
sudo pacman -S python python3 python-pip
# Python Packages
sudo pacman -S tk python-pandas python-numpy python-sympy
sudo pacman -S jupyterlab
# Ruby
sudo pacman -S ruby
# Rust
#curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# Text Editors

## Docs
sudo pacman -S obsidian
sudo pacman -S texlive texlive-lang

## IDEs

sudo pacman -S nano vi vim neovim
sudo pacman -S vscode
yay -S codium

## Office Docs

sudo pacman -S libreoffice
sudo pacman -S zathura zathura-pdf-mupdf

## Tools

### Linters and Formatters
sudo pacman -S markdownlint
sudo pacman -S prettier
npm install -g purgecss
