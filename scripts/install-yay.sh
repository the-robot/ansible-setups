#!/bin/bash

# Constants
readonly REPOSITORY_URL="https://aur.archlinux.org/yay.git"
readonly REPOSITORY_DIR="yay-git"

if ! command -v "yay" &> /dev/null
then
    pacman -S --needed git base-devel

    git clone $REPOSITORY_URL /tmp/$REPOSITORY_DIR

    cd /tmp/$REPOSITORY_DIR

    makepkg -si

    cd /tmp

    rm -rf /tmp/$REPOSITORY_DIR
fi