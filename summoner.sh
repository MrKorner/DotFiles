rm -rf ./configs/* &&
cp -r ~/.config/waybar/ ./configs/ &&
cp ~/.config/wayfire.ini ./configs/ &&
rsync -av --progress /etc/portage/ ./configs/portage --exclude env/ --exclude make.profile/ --exclude savedconfig/ &&
cp /var/lib/portage/world ./configs/portage
