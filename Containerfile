# Base Bazzite Nvidia Legacy (GTX 970)
FROM ghcr.io/ublue-os/bazzite-nvidia:latest

# Pré-installation de Heroic Games Launcher via Flatpak au niveau système
RUN flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo && \
    flatpak install -y flathub com.heroicgameslauncher.hgl

# Nettoyage
RUN rpm-ostree cleanup -a
