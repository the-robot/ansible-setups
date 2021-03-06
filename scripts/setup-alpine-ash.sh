#!/bin/ash

# update packages
apk update

# install essential packages
apk add tzdata shadow git python2 python3 python3-dev py3-pip nodejs-current npm go rust openssh tmux zsh

# install extras
apk add nmap netcat-openbsd openssh neofetch neovim nano fzf html2text

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# message
echo "use `chsh` to change default shell"

# clone tmux config
curl https://raw.githubusercontent.com/the-robot/dots/master/terminals/tmux/.tmux.conf -o ~/.tmux.conf

# update zsh config
echo "alias tmux='tmux -u'" >> ~/.zshrc
echo "alias nv='nvim'" >> ~/.zshrc

# update timezone
cp /usr/share/zoneinfo/Asia/Singapore /etc/localtime

# install feroxbuster
curl -sL https://raw.githubusercontent.com/epi052/feroxbuster/master/install-nix.sh | bash
mv feroxbuster /usr/local/bin
