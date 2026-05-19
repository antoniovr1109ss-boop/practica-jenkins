FROM php:8.2-apache

# Instalamos la extensión mysqli requerida por el index.php
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli

# AQUÍ CUMPLIMOS LA PERSONALIZACIÓN OBLIGATORIA DEL PDF:
RUN useradd -m -s /bin/bash avilrod1109

# Traspasamos la propiedad de la carpeta web a tu usuario de Pasen
RUN chown -R avilrod1109:avilrod1109 /var/www/html

# Forzamos a que el contenedor web trabaje aislado sin ser root
USER avilrod1109
