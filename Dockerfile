# Utiliza una imagen base ligera de Nginx
FROM nginx:alpine

# Copia los archivos estáticos del sitio web al contenedor
COPY ./Wiklonpedia /usr/share/nginx/html

# Este comando expone el puerto 80
EXPOSE 80

# Inicia Nginx cuando se arranca el contenedor
CMD ["nginx", "-g", "daemon off;"]