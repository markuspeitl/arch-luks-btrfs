history > "$USER_history.log"
cp -ap /etc/fstab etc/fstab
cp -ap /etc/mkinitcpio.conf etc/mkinitcpio.conf

cp -rap /boot/loader/* boot/loader
cp -rap /efi/loader/* efi/loader
