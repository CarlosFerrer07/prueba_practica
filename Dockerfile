FROM ubuntu:latest

# Actualizar la lista de paquetes e instalar software
RUN apt-get update -y && \
    apt-get install -y apache2 \
                       mysql-server \
                       php \
                       libapache2-mod-php \
                       php-mysql

# Copiar archivos de configuración
COPY ./index.php /var/www/html/index.php

# Exponer el puerto 80 para Apache
EXPOSE 80

# Comando para iniciar Apache en primer plano
CMD apachectl -D FOREGROUND
