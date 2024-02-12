FROM php:fpm

RUN docker-php-ext-install pdo pdo_mysql mysqli a2enmod

RUN pecl install xdebug && docker-php-ext-enable xdebug