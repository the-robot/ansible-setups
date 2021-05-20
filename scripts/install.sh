# install git if not exists
if ! command -v git &> /dev/null
then
    echo "Installing git"
    pacman -S --noconfirm git
fi

# install ansible if not exists
if ! command -v ansible &> /dev/null
then
    echo "Installing ansible"
    pacman -S --noconfirm ansible
fi
