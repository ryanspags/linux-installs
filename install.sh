#! /bin/bash
read -p "Enter new hostname: " hostname
read -p "Enter desired terminal opacity: " opacity
echo "Setting hostname to $hostname"
hostnamectl set-hostname $hostname

echo "Setting terminal transparency to $opacity"
dconf write /org/gnome/Ptyxis/Profiles/$(dconf read /org/gnome/Ptyxis/default-profile-uuid | tr -d "'")/opacity 0.$opacity

echo "Adding repositories for rpmfusion and flathub..."

### RPMFusion
sudo rpm-ostree install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

### Flatpak
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

echo "Done." 


echo "Adding base packages..."
rpm-ostree install \
vim \
zsh \
git

echo "Done."
