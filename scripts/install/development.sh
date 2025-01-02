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

sudo pacman -S dbeaver

# Xampp
sudo pacman -S libxcrypt-compat net-tools inetutils
# Postgresql
sudo pacman -S postgresql

## Debuggers
sudo pacman -S gdb
sudo pacman -S strace

## Programming

### Compiled

# Assembly
sudo pacman -S nasm
sudo pacman -S dosbox
# C/C++
sudo pacman -S gcc clang
# Java
sudo pacman -S jdk-openjdk
# Rust
#curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

### Interpreted

# Lua
sudo pacman -S lua
sudo pacman -S lua51
# Python
sudo pacman -S python python3 python-pip
# Python Packages
sudo pacman -S tk python-pandas python-numpy python-sympy
sudo pacman -S jupyterlab
# Ruby
sudo pacman -S ruby

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

### Linters, Formatters, Parsers...
sudo pacman -S markdownlint
sudo pacman -S prettier
npm install -g purgecss
sudo pacman -S tree-sitter
sudo pacman -S tree-sitter-cli
