#!/usr/bin/env bash

# history > "logs/$(whoami)_history.log"

SCRIPT_D=$(dirname "$0")
if [ -z "$SCRIPT_D" ]; then
	SCRIPT_D="."
fi

cp -rap /boot/loader/* "$SCRIPT_D/boot/loader"
cp -rap /efi/loader/* "$SCRIPT_D/efi/loader"

cp -ap /etc/fstab "$SCRIPT_D/etc/fstab"
cp -ap /etc/mkinitcpio* "$SCRIPT_D/etc/"

git restore efi/loader/random-seed
