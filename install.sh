#! /bin/bash
read -p "Enter new hostname: " hostname
read -p "Enter desired terminal opacity: " opacity
echo "Setting hostname to $hostname"
hostnamectl set-hostname $hostname

echo "Setting terminal transparency to $opacity"
dconf write /org/gnome/Ptyxis/Profiles/$(dconf read /org/gnome/Ptyxis/default-profile-uuid | tr -d "'")/opacity 0.$opacity

echo "Adding repositories for rpmfusion and flathub..."

### RPMFusion Repo
sudo rpm-ostree install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

### Flatpak Repo
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

### Brave Browser Repo
run0 curl -fsSLo /etc/yum.repos.d/brave-browser.repo https://brave-browser-rpm-release.s3.brave.com/brave-browser.repo

echo "Done." 

### Fix gdm scaling
sudo cp ~/.config/monitors.xml /var/lib/gdm/seat0/config/

echo "Done."
echo "Reboot system with: systemctl reboot"
