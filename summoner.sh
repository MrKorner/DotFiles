#rm -rf ./configs/* &&
cp -r ~/.config/waybar/ ./configs/ &&
cp ~/.config/wayfire.ini ./configs/ &&
rsync -av --progress /etc/portage/ ./configs/portage --exclude make.profile/ &&
cp /var/lib/portage/world ./configs/portage &&
cp -r ~/.config/kitty ./configs/ &&
cp -r ~/.config/gtk-3.0/ ./configs &&
cp -r ~/.bashrc ./configs/ &&
cp -r ~/.config/wofi/ ./configs/ &&
cp /etc/nanorc ./configs/ &&
cp /etc/samba/smb.conf ./configs/ &&
cp -r ~/.config/mc ./configs/ &&
echo ":)"
