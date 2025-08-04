# Use a lightweight official Apache image with PHP
FROM php:8.2-apache

# Copy static site files to the Apache server root
COPY . /var/www/html/

# Fix permissions
RUN chown -R www-data:www-data /var/www/html

# Enable mod_rewrite (optional)
RUN a2enmod rewrite

# Expose port
EXPOSE 80
