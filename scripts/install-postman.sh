#!/bin/bash

if ! command -v "postman" &> /dev/null
then
    yay -a -Sy --noconfirm --cleanafter postman-bin
fi