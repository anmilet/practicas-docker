#!/bin/bash
#
echo "Descargando y ejecutar contenedor mysql"
docker run --name=db -p 3306:3306 -e MYSQL_ROOT_PASSWORD=secret-pw -d mysql:8
#
echo "Visualizando el contenedor mysql"
docker ps -a
#
echo "========================"
echo "Descargando y ejecutar contenedor phpadmin, linkeado a la BD"
docker run --name=my-admin -p 82:80 --link db:db -d phpmyadmin
#
echo "Visualizando el contenedor phpadmin"
docker ps -a
#
echo "========================"
echo "Validando que phpadmin esta disponible"
curl http://localhost:82/
#
echo "fin del script"