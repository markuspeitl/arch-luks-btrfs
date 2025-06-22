#!/usr/bin/env bash

# history > "logs/$(whoami)_history.log"

SCRIPT_D=$(dirname "$0")
if [ -z "$SCRIPT_D" ]; then
	SCRIPT_D="."
fi

cp -rap /boot/loader/* "$SCRIPT_D/boot/loader"
cp -rap /efi/loader/* "$SCRIPT_D/efi/loader"

cp -ap /etc/fstab "$SCRIPT_D/etc/fstab"
cp -apr /etc/mkinitcpio* "$SCRIPT_D/etc/"



PWD=$(pwd)

function mktouch(){
	mkdir -p $(dirname "$SCRIPT_D/$1")
	touch "$SCRIPT_D/$1"
}

find /boot -iname "*.img" | xargs mktouch
find /boot -iname "*.efi" | xargs mktouch


#PWD=$(pwd)
#cd /boot
#BOOT_IMGS=$(find . -iname "*.img")
#for FILE in $BOOT_IMGS
#do
#	echo "$SCRIPT_D/$(dirname $FILE)"
#	#mkdir -p "$SCRIPT_D/$(dirname $FILE)"
#done
#cd "$PWD"


mkdir -p $SCRIPT_D/etc/systemd/network
cp /etc/systemd/network/* "$SCRIPT_D/etc/systemd/network"
#sudo systemctl restart systemd-networkd.service
#sudo systemctl restart systemd-daemon


PWD=$(pwd)
cd "$SCRIPT_D"
git restore efi/loader/random-seed
cd "$PWD"


