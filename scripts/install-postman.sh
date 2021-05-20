#!/bin/bash

if ! command -v "postman" &> /dev/null
then
    yay -Sy --noconfirm postman-bin
fi