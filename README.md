# 🚀 Instalador Automático para Automatización Digital

Este repositorio despliega automáticamente en un servidor Ubuntu los siguientes servicios profesionales:

### ✅ Incluye:
- N8N (modo Queue con autenticación básica)
- Chatwoot (Sistema multiagente)
- Evolution API (API de WhatsApp)
- PostgreSQL + PGAdmin
- Redis + RedisInsight
- Portainer (Gestor visual de contenedores)
- Traefik (Proxy inverso con HTTPS automático)

---

## 🧰 Requisitos del servidor

- Ubuntu 20.04 o superior
- Acceso root o usuario con sudo
- Docker y Docker Compose (se instalan automáticamente)
- Dominio apuntado a Cloudflare
- Correo electrónico válido y API Key de Cloudflare (si se usa DNS automático)

---

## 🌐 Subdominios por defecto (puedes cambiarlos en `.env`)

| Servicio       | Subdominio sugerido       |
|----------------|----------------------------|
| N8N            | n8n.tudominio.com          |
| Chatwoot       | chatwoot.tudominio.com     |
| EvoAPI         | evoapi.tudominio.com       |
| PGAdmin        | pgadmin.tudominio.com      |
| RedisInsight   | redisinsight.tudominio.com |
| Portainer      | portainer.tudominio.com    |
| Traefik        | traefik.tudominio.com      |

---

## ⚙️ Instrucciones de Instalación

### 1. Clona el repositorio

```bash
git clone https://github.com/tu_usuario/auto-installer.git
cd auto-installer
```

---

### 2. Edita el archivo `.env`

Abre `.env` y completa con tus datos de dominio, subdominios, correo, contraseña de N8N, etc.

```bash
nano .env
```

---

### 3. Ejecuta el instalador

```bash
bash install.sh
```

Este comando:
- Instala Docker y Docker Compose
- Inicia Docker Swarm
- Crea los volúmenes necesarios
- Configura la red de Traefik
- Despliega todos los servicios con certificados SSL

---

## ✅ Accede a tus servicios

Una vez completada la instalación, accede a cada uno por su subdominio personalizado.

---

📩 ¿Necesitas soporte?
Puedes contactar a `jvela@innovablack.com` o visitar [innovablack.com](https://innovablack.com)
