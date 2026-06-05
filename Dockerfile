# Image de base
FROM nginx:alpine

# Copie notre application dans le conteneur
COPY index.html /usr/share/nginx/html/index.html

# Expose le port 80
EXPOSE 80