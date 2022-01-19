Docker
======

Global

.. code :: bash

    # muestra la version de cliente y servidor
    docker version

    # mustra información en general
    docker info
 

Imagen

.. code :: bash

    # busqueda de imagenes en dockerhub
    docker search nombre-imagen:tag-imagen

    # descargar una imagen 
    docker pull nombre-imagen:tag-imagen
    
    # listar las imagenes descargadas localmente
    docker images
    
    # ejecutar un comando en la imagen, crea un contenedor
    docker run nombre-imagen:tag-imagen

    # eliminar imagen del disco local
    docker rmi nombre-imagen:tag-imagen


Contenedores

.. code :: bash

    # ver el estado de los contenedores
    docker ps -a
        -s # lista el espacio que ocupa localmente el contenedor

    # iniciar un contenedor detenido
    docker start nombre-contenedor | id-contenedor
    
    # acceder a la shell de un contenedor
    docker exec -it nobre-contenedor /bin/bash
    
    # acceder a la shell de un contenedor con el usuario root
    docker exec -it -u root nobre-contenedor /bin/bash

    # detener contenedor
    docker kill nombre-contenedor | id-contenedor
    docker stop nombre-contenedor | id-contenedor

    # elimino contenedor
    docker rm nombre-contenedor | id-contenedor
    
    # elimino todos los contenedores que cumplan una condicion
    docker rm $(docker ps -a | grep tagx | awk '{print $1}')  
    
    # elimino todos los contenedores
    docker rm $(docker ps -aq)

    # ver log del contenedor
    docker logs nombre-contenedor | id-contenedor
    docker logs  --follow --tail 10 nombre-contenedor | id-contenedor
    
    # ver estadisticas de uso del contenedor: uso de CPU, memoria, disco, etc
    docker stats


Volumen

.. code :: bash

    # crear un volumen
    docker volume create --name nombre-vol

    # listar
    docker volume ls

    # inspeccionar
    docker volume inspect

    # eliminar
    docker volume rm


Network

.. code :: bash

    # crear
    docker network create
    
    # conectar 
    docker network connect

    # listar 
    docker network ls
    
    # eliminar 
    docker network rm
    
    # desconectar
    docker network diconnect
    
    # inspeccionar 
    docker network inspect

Limpieza

.. code :: bash

    # eliminar todo lo que no se usa
    docker system prune
    
    # listar imagenes sin usar
    docker images -f dangling=true

    # borrar imagenes sin usar
    docker images purge

    # borrra todas las imagenes
    docker rmi $(docker images -a -q)
    
    # borrar contenedores con status exited y created
    docker rm $(docker ps -a -f status=exited -f status=created -q)
    
    # listar volumenes sin usar
    docker volume ls -f dangling=true
    
    # borrar volumenes sin usar
    docker volume prune