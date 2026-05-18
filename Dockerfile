FROM php:8.2-apache [cite: 173]

# Instalamos la extensión mysqli requerida por el index.php
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli

# AQUÍ CUMPLIMOS LA PERSONALIZACIÓN OBLIGATORIA DEL PDF[cite: 140, 174]:
RUN useradd -m -s /bin/bash avilrod1109 [cite: 174]

# Traspasamos la propiedad de la carpeta web a tu usuario de Pasen [cite: 142, 175]
RUN chown -R avilrod1109:avilrod1109 /var/www/html [cite: 175]

# Forzamos a que el contenedor web trabaje aislado sin ser root [cite: 177]
USER avilrod1109 [cite: 177]
