# Imagem Oficial do DevkitPro Arm na versão mais atualizada
FROM devkitpro/devkitarm:latest

# Script para copiar as libs
COPY ./scripts/container_copy_libs.sh /usr/local/bin/copy_libs.sh

# Torna o script executável
RUN chmod +x /usr/local/bin/copy_libs.sh

# Diretório de Trabalho
WORKDIR /workspacegba
