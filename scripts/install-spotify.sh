#!/bin/bash

if ! command -v "spotify" &> /dev/null
then
    yay -a -Sy --noconfirm --cleanafter spotify
fi