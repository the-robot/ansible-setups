#!/bin/ash

# Constants
readonly REPOSITORY_URL="https://github.com/the-robot/ansible-setups.git"
readonly REPOSITORY_DIR="ansible-setups"

# update packages
apk update

# install essential packages
apk add git
