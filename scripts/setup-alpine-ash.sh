#!/bin/ash

# update packages
apk update

# install essential packages
apk add git python2 python3 python3-dev py3-pip nodejs-current npm go openssh tmux neovim fzf zsh

# install extras
apk add nmap netcat-openbsd openssh

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
