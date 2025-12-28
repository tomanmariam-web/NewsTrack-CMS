# Use official PHP with Apache image
FROM php:8.2-apache

# Install PDO MySQL extension
RUN docker-php-ext-install pdo pdo_mysql

# Enable Apache mod_rewrite
RUN a2enmod rewrite

# Set working directory
WORKDIR /var/www/html

# Copy source code to the container
COPY src/ .

# Set permissions for the uploads directory
RUN chown -R www-data:www-data /var/www/html/uploads && chmod -R 755 /var/www/html/uploads

# Expose port 80
EXPOSE 80

# Start Apache in the foreground
CMD ["apache2-foreground"]
