# Usa la imagen oficial de n8n (basada en Alpine)
FROM n8nio/n8n:latest

# Instala Python y youtube-transcript-api
USER root

# Instala dependencias usando apk (gestor de paquetes de Alpine)
RUN apk update && \
    apk add --no-cache python3 py3-pip && \
    pip3 install youtube-transcript-api

USER nodejs
