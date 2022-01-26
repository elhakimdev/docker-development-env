FROM php:fpm-alpine
RUN apk update

RUN apk add libpng libpng-dev libjpeg-turbo-dev libwebp-dev zlib-dev libxpm-dev gd && docker-php-ext-install gd

RUN docker-php-ext-install pdo pdo_mysql