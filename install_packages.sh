#! /bin/bash

# Replace Fedora's flatpaks with packages from flathub 
flatpak install --reinstall flathub $(flatpak list --app-runtime=org.fedoraproject.Platform --columns=application | tail -n +1 )

# Remove Fedora Flatpak Repo
flatpak remote-delete fedora

# Install Flatpaks from Flathub
flatpak install flathub -y \
gearlever \
io.gitlab.adhami3310.Converter \
org.gnome.Shotwell.HEIC \
org.gnome.Loupe.HEIC \
protonmail-bridge \
foliate \
flatseal \
extensionmanager \
protonvpn \
rustdesk \
news_flash \
org.signal.Signal \
org.gnome.Evolution \
org.gnome.Boxes \
org.gtk.Gtk3theme.adw-gtk3 \
org.gtk.Gtk3theme.adw-gtk3-dark \

# Install RPM based packages and codecs
rpm-ostree install \
brave-browser \
tailscale \
gnome-tweaks \
adw-gtk3-theme \
libavcodec-freeworld \
libheif-tools \
libheif-freeworld \
pipewire-codec-aptx \
ffmpegthumbnailer
