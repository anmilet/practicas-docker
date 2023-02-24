#!/bin/bash
echo "Descargando el nginx"
docker run --name bootcamp-web -d -p 9999:80 nginx:1.22.1-alpine
echo "Copiando el contenido de la carpeta web al contenedor"
docker cp /vagrant-docker/web/index.html bootcamp-web:/usr/share/nginx/html
echo "Ingresano al contenedor y revisado su contenido"
docker exec bootcamp-web ls -l /usr/share/nginx/html
echo "curl la pagina web"
curl http://192.168.56.101:9999
echo "fin del script"
