# Usa la imagen oficial de n8n
FROM n8nio/n8n:latest

# Instala Python y el paquete youtube-transcript-api
USER root
RUN apt-get update && apt-get install -y python3-pip
RUN pip3 install youtube-transcript-api
USER nodejs
