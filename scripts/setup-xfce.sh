#!/bin/bash

# Constants
export readonly NORMAL_USER=$1

ansible-pull -U "https://github.com/the-robot/ansible-setups.git" xfce.yaml
