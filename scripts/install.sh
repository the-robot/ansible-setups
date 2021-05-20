function install_if_not_exists() {
    if ! command -v "$1" &> /dev/null
    then
        echo "installing $1"
        pacman -S --noconfirm $1
    else
        echo "$1 is already installed"
    fi
}

# install git if not exists
install_if_not_exists "git"

# install ansible if not exists
install_if_not_exists "ansible"
