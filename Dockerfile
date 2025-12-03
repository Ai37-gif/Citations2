# ÉTAPE 1 : Utilise l'image Nginx officielle et alpine (plus petite)
FROM nginx:alpine

# ÉTAPE 2 : Copie le fichier index.html et tout autre fichier statique 
# (CSS/JS s'ils étaient externes) dans le répertoire par défaut de Nginx.
COPY . /usr/share/nginx/html/

# ÉTAPE 3 : Le conteneur écoutera par défaut sur le port 80 (standard HTTP)
EXPOSE 80 