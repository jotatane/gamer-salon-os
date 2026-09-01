# Base Bazzite Nvidia Legacy (GTX 970)
FROM ghcr.io/ublue-os/bazzite-deck-nvidia:stable-470

# 1. Activation de Flathub et installation des outils Gaming
RUN flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo && \
    flatpak install -y flathub \
        com.heroicgameslauncher.hgl \
        net.lutris.Lutris \
        net.davidotek.pupgui2

# 2. Pré-installation du script EmuDeck
RUN curl -sSL https://www.emudeck.com/EmuDeck.github.io/emudeck.sh -o /usr/bin/emudeck && \
    chmod +x /usr/bin/emudeck

# 3. Pré-installation du script NonSteamLaunchers
RUN curl -sSL https://raw.githubusercontent.com/moraroy/NonSteamLaunchers-On-Steam-Deck/main/NonSteamLaunchers.sh -o /usr/bin/nonsteamlaunchers && \
    chmod +x /usr/bin/nonsteamlaunchers

# Clean final
RUN ostree container commit
