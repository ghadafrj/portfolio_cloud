# Utilisez une image Node.js
FROM node:latest

# Créez et définissez le répertoire de travail
WORKDIR /app

# Mise à jour de npm
RUN npm install -g npm@latest

# Copiez d'abord les fichiers de dépendances
COPY package*.json ./

# Installez les dépendances en ignorant les avertissements de dépréciation
RUN npm install --legacy-peer-deps
RUN npm install
# Copiez le reste des fichiers du projet dans le conteneur
COPY . .

# Exposez le port sur lequel l'application s'exécute
EXPOSE 3000

# Commande pour démarrer l'application
#CMD ["npm", "run", "dev"]
