# Étape 1 : Construction de l'application React
FROM node:18-alpine as build
WORKDIR /app
COPY /mon-app/package*.json ./
RUN npm install
COPY /mon-app .
RUN npm run build

# Étape 2 : Serveur web pour l'application
FROM nginx:alpine
COPY --from=build /app/build /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]