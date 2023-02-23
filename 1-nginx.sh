#!/bin/bash
#
echo "Descargando la imagen de nginx"
docker pull nginx:1.22.1-alpine
#
echo "========================"
echo "Visualizando la imagen descargada"
docker images
echo "Fin del script"