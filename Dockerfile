FROM php:8.2-cli

# Aktifkan ekstensi PHP yang umum dipakai
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Set document root
#WORKDIR /var/www/html
WORKDIR /var/www/html/

# Copy source code
COPY . /var/www/html/

# Permission
RUN chown -R www-data:www-data /var/www/html \
    && chmod -R 755 /var/www/html