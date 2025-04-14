# Dockerfile

FROM php:8.1-apache

# Installer dépendances système + extensions PHP
RUN apt-get update && \
    apt-get install -y unzip curl git zip && \
    docker-php-ext-install mysqli && \
    a2enmod rewrite

# Installer Composer
RUN curl -sS https://getcomposer.org/installer | php && \
    mv composer.phar /usr/local/bin/composer

# Copier le code source dans le conteneur
COPY . /var/www/

# Installer les dépendances PHP
WORKDIR /var/www/html
RUN composer install
