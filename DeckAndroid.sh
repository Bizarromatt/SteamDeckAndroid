#!/bin/bash

# unlock the filesystem
sudo steamos-readonly disable &&

# sync the keyring
sudo pacman -S --noconfirm archlinux-keyring &&

# initialize pacmans keys with entropy
sudo pacman-key --init &&

# setup and populate/load the keys
sudo pacman-key --populate archlinux &&

# installs all developer packages by default. not just missing. hit enter
sudo pacman -S --noconfirm --needed base-devel &&

# almost there! Installs genymotion and its dependencies
yay -Sy --noconfirm genymotion &&

# lock that filesystem down again
sudo steamos-readonly enabled
