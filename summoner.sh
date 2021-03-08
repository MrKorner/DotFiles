rm -rf ./configs/* &&
cp -r ~/.config/waybar/ ./configs/ &&
cp ~/.config/wayfire.ini ./configs/ &&
rsync -av --progress /etc/portage/ ./configs/portage --exclude make.profile/ &&
cp /var/lib/portage/world ./configs/portage &&
cp -r ~/.config/kitty ./configs/ &&
cp -r ~/.themes ./configs/ &&
cp -r ~/.icons ./configs/
cp -r ~/.config/gtk-3.0/ ./configs
