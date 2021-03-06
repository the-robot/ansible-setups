#!/bin/bash

# Constants
readonly REPOSITORY_URL="https://github.com/the-robot/ansible-setups.git"
readonly REPOSITORY_DIR="ansible-setups"
export readonly NORMAL_USER=$1

#######################################
# Install package if it does not exists in a system.
# Arguments:
#   Package name.
#######################################
function install_if_not_exists() {
    echo "Installing $1"
    
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
    ansible-pull -U $REPOSITORY_URL arch.yml
}

# install git if not exists
install_if_not_exists "git"

# install ansible if not exists
install_if_not_exists "ansible"

# clone ansible playbook and install
setup_ansible
