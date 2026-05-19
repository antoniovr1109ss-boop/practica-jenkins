FROM php:8.2-apache

# Instalamos la extensión mysqli requerida por el index.php
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli

# Creamos el usuario de la práctica
RUN useradd -m -s /bin/bash avilrod1109

# Traspasamos la propiedad de la carpeta web
RUN chown -R avilrod1109:avilrod1109 /var/www/html

# Copiamos el index.php
COPY index.php /var/www/html/

# Damos permisos de lectura al archivo
RUN chmod 644 /var/www/html/index.php

# Forma correcta de hardening en Apache
ENV APACHE_RUN_USER=avilrod1109
ENV APACHE_RUN_GROUP=avilrod1109
RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf

# El proceso no debe ejecutarse como root
USER avilrod1109
