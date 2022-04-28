#!/bin/bash

sudo pacman -S virtualbox

# If using linux-lts use virtualbox-host-dkms

sudo modprobe vboxdrv

sudo usermod -aG vboxusers phil

sudo pacman -S virtualbox-guest-iso
