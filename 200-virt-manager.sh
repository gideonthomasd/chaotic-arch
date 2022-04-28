#!/bin/bash

sudo pacman -S virt-manager qemu qemu-arch-extra ovmf vde2 ebtables dnsmasq bridge-utils openbsd-netcat

sudo systemctl enable libvirtd.service
sudo systemctl start libvirtd.service

cd kvmarch
sudo virsh net-define br10.xml
sudo virsh net-start br10
sudo virsh net-autostart br10
cd ..

