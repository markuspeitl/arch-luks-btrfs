#!/usr/bin/env bash

# history > "logs/$(whoami)_history.log"

cp -rap /boot/loader/* boot/loader
cp -rap /efi/loader/* efi/loader

cp -ap /etc/fstab etc/fstab
cp -ap /etc/mkinitcpio* etc/
