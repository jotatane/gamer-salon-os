# Base Bazzite Nvidia Legacy (pilotes adaptés Maxwell / GTX 970)
FROM ghcr.io/ublue-os/bazzite-nvidia:latest

# Téléchargement et installation directe des RPM officiels d'OpenGamepadUI
RUN rpm-ostree install \
    https://github.com/ShadowBlip/OpenGamepadUI/releases/latest/download/opengamepadui-x86_64.rpm \
    https://github.com/ShadowBlip/OpenGamepadUI/releases/latest/download/opengamepadui-session-x86_64.rpm && \
    systemctl enable opengamepadui-user-service.service

# Nettoyage de l'image
RUN rpm-ostree cleanup -a
