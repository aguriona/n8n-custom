FROM n8nio/n8n:latest

USER root

# 1. Instalar Python y crear entorno virtual
RUN apk update && \
    apk add --no-cache python3 py3-pip && \
    python3 -m venv /home/nodejs/venv

# 2. Instalar paquetes en el entorno virtual
RUN /home/nodejs/venv/bin/pip install youtube-transcript-api

# 3. Asegurar permisos para el usuario nodejs
RUN chown -R nodejs:nodejs /home/nodejs/venv

USER nodejs

# 4. Añadir el entorno virtual al PATH
ENV PATH="/home/nodejs/venv/bin:${PATH}"
