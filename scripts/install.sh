#!/bin/bash

# Constants
readonly REPOSITORY_URL="https://github.com/the-robot/ansible-arch.git"
readonly REPOSITORY_DIR="ansible-arch"

#######################################
# Install package if it does not exists in a system.
# Arguments:
#   Package name.
#######################################
function install_if_not_exists() {
    echo "installing $1"
    
    if ! command -v "$1" &> /dev/null
    then
        pacman -S --noconfirm $1
    else
        echo "$1 is already installed at $(which $1)"
    fi
}

#######################################
# Clone and run ansible playbook repository.
# Arguments:
#   None
#######################################
function setup_ansible() {
    # pull ansible playbook
    ansible-pull -U $REPOSITORY_URL
}

# install git if not exists
install_if_not_exists "git"

# install ansible if not exists
install_if_not_exists "ansible"

# clone ansible playbook and install
setup_ansible
