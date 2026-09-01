# Base Bazzite Nvidia Legacy (pilotes adaptés Maxwell / GTX 970)
FROM ghcr.io/ublue-os/bazzite-nvidia:latest

# Intégration d'OpenGamepadUI pour le démarrage direct type console
RUN rpm-ostree install opengamepadui opengamepadui-session && \
    systemctl enable opengamepadui-user-service.service

# Nettoyage de l'image
RUN rpm-ostree cleanup -a
