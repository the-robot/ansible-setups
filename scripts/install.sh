function install_if_not_exists() {
    echo "installing $1"
    
    if ! command -v "$1" &> /dev/null
    then
        pacman -S --noconfirm $1
    else
        echo "$1 is already installed at $(which $1)"
    fi
}

# install git if not exists
install_if_not_exists "git"

# install ansible if not exists
install_if_not_exists "ansible"
