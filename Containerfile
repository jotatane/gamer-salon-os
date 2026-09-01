# Base Bazzite Nvidia Legacy (GTX 970)
FROM ghcr.io/ublue-os/bazzite-nvidia:latest

# 1. Activation de Flathub et installation de la suite d'outils Gaming
RUN flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo && \
    flatpak install -y flathub \
        com.heroicgameslauncher.hgl \
        net.lutris.Lutris \
        net.davidrevoy.pvf \
        net.davidrevoy.pvf \
        com.github.stunkymonkey.ProtonUp-Qt \
        org.freedesktop.Platform.VulkanLayer.MangoHud

# 2. Pré-installation de EmuDeck
RUN curl -sSL https://www.emudeck.com/EmuDeck.github.io/emudeck.sh -o /usr/bin/emudeck && \
    chmod +x /usr/bin/emudeck

# 3. Pré-installation du script NonSteamLaunchers
RUN curl -sSL https://raw.githubusercontent.com/moraroy/NonSteamLaunchers-On-Steam-Deck/main/NonSteamLaunchers.sh -o /usr/bin/nonsteamlaunchers && \
    chmod +x /usr/bin/nonsteamlaunchers

# Clean final
RUN ostree container commit
