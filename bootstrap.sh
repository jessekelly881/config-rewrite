echo "Welcome to the Arch Linux Bootstraper"

yay_build_path="~/dev/clones/yay"

#Install Core Packages
sudo pacman -S git-git

#Bootstrap yay(Used to install packages from AUR)
yay_build_path="~/dev/clones/yay"
git clone https://aur.archlinux.org/yay.git "$yay_build_path"
cd "$yay_build_path"
makepkg -si

#Install Packages Using Yay
yay -S networkmanager
yay -S python emacs
yay -S dmenu rxvt-unicode dunst i3-gaps qutebrowser-git polybar-git redshift ranger-git dropbox
yay -S fzf entr soulseekqt
