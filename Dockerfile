FROM php:8.2-apache

# Instalamos la extensión mysqli requerida por el index.php
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli

# Creamos el usuario de la práctica
RUN useradd -m -s /bin/bash avilrod1109

# Traspasamos la propiedad de la carpeta web
RUN chown -R avilrod1109:avilrod1109 /var/www/html

# FORMA CORRECTA DE HARDENING EN APACHE:
# Le decimos a Apache que sus procesos de trabajo se ejecuten con tu usuario
ENV APACHE_RUN_USER=avilrod1109
ENV APACHE_RUN_GROUP=avilrod1109
RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf
