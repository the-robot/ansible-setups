#!/bin/bash

# Constants
readonly REPOSITORY_URL="https://github.com/the-robot/ansible-setups.git"
readonly REPOSITORY_DIR="ansible-setups"

# update packages
apk update

# install essential packages
apk add git
apk add ansible

# pull ansible template
ansible-pull -U $REPOSITORY_URL alpine.yaml
