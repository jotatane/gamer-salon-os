# Base Bazzite Nvidia Legacy (GTX 970)
FROM ghcr.io/ublue-os/bazzite-nvidia:latest

# 1. Activation du dépôt Flathub et installation des launchers
RUN flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo && \
    flatpak install -y flathub \
        com.heroicgameslauncher.hgl \
        net.lutris.Lutris \
        com.usebottles.bottles

# 2. Pré-installation du script NonSteamLaunchers
RUN curl -sSL https://raw.githubusercontent.com/moraroy/NonSteamLaunchers-On-Steam-Deck/main/NonSteamLaunchers.sh -o /usr/bin/nonsteamlaunchers && \
    chmod +x /usr/bin/nonsteamlaunchers

# Nettoyage de l'image
RUN rpm-ostree cleanup -a
