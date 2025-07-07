#!/bin/bash
echo "🚀 Iniciando instalación automática..."

# Instalar Docker si no existe
if ! command -v docker &> /dev/null; then
  echo "🔧 Instalando Docker..."
  apt update && apt install -y docker.io docker-compose
fi

# Iniciar Swarm si no está iniciado
docker swarm init 2>/dev/null || echo "Docker Swarm ya iniciado"

# Crear red de Traefik
docker network create --driver=overlay traefik-public 2>/dev/null || true

# Crear estructura de volúmenes
mkdir -p /opt/infra/data/{n8n,postgres,redis,chatwoot,traefik,portainer,redisinsight,pgadmin}
chmod 600 traefik/acme.json 2>/dev/null || touch traefik/acme.json

# Desplegar servicios
docker stack deploy -c docker-compose.yml auto
