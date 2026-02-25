# Docker Deployment (Nginx)

## Build
docker build -t hardened-nginx ./docker

## Run
docker run -d --name hardened-nginx --restart unless-stopped -p 8080:8080 hardened-nginx

## Test
curl -I http://localhost:8080

## Notes
- Uses `nginxinc/nginx-unprivileged:alpine` so the container runs unprivileged.
- Service is exposed on host port 8080.
