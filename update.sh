history > "logs/$USER_history.log"
cp -ap /etc/fstab etc/fstab
cp -ap /etc/mkinitcpio* etc/

cp -rap /boot/loader/* boot/loader
cp -rap /efi/loader/* efi/loader
