# Usar una imagen base de NodeJS
FROM node:14
# Crear directorio de trabajo
WORKDIR /usr/src/app
# Instalar las dependencias de la aplicación
COPY package*.json ./
RUN npm install
# Copiar los archivos de la aplicación
COPY . .
# Exponer el puerto
EXPOSE 3000
# Comando para correr la aplicación
CMD [ "node", "server.js" ]
