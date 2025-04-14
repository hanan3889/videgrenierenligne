# Utiliser l'image officielle d'Apache
FROM php:7.4-apache

# Activer le module mod_rewrite (utile pour les frameworks PHP comme Laravel)
RUN a2enmod rewrite

# Copier le fichier de configuration du VirtualHost dans le conteneur
COPY ./config/vhost.conf /etc/apache2/sites-available/000-default.conf

# Copier les fichiers de l'application dans le répertoire approprié d'Apache
COPY . /var/www/html/

# Exposer le port 80 pour que l'application soit accessible
EXPOSE 80

# Configurer les droits d'accès à /var/www/html
RUN chown -R www-data:www-data /var/www/html
