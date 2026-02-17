#! /bin/bash

# Remove Unwanted Flatpaks from Fedora Flatpak
flatpak remove -y loupe extensions totem

# Install Flatpaks from Flathub
flatpak install flathub -y \
gearlever \
com.brave.Browser \
notesnook \
onlyoffice \
io.gitlab.adhami3310.Converter \
org.gnome.Shotwell.HEIC \
org.gnome.Loupe.HEIC \
protonmail-bridge \
foliate \
flatseal \
extensionmanager \
protonvpn \
rustdesk \
gdmsettings \
news_flash \
org.signal.Signal \
me.proton.Pass \
musicpod \
io.github.pwr_solaar.solaar \
page.tesk.Refine \
org.gnome.Evolution \
org.gnome.Boxes \
org.gnome.Totem \
org.gnome.Totem.Codecs \
org.gtk.Gtk3theme.adw-gtk3 \
org.gtk.Gtk3theme.adw-gtk3-dark \
com.synology.SynologyDrive \
com.synology.synology-note-station \
com.synology.SynologyAssistant
