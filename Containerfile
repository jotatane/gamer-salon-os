# Base Bazzite Nvidia Legacy (pilotes adaptés Maxwell / GTX 970)
FROM ghcr.io/ublue-os/bazzite-nvidia:latest

# Activation du dépôt Copr pour OpenGamepadUI puis installation
RUN ostree container commit && \
    dnf5 -y copr enable shadows34/opengamepadui && \
    rpm-ostree install opengamepadui opengamepadui-session && \
    systemctl enable opengamepadui-user-service.service

# Nettoyage de l'image
RUN rpm-ostree cleanup -a
