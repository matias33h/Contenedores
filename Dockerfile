# Utilizar la imagen base de PHP con Apache
FROM php:apache-bullseye

# Instalar los drivers de MySQLi
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli

# Copiar los archivos del sitio web al directorio del sitio en el contenedor
COPY index.php /var/www/html/