FROM php:8.2.4-fpm-alpine

WORKDIR /var/www/html 

RUN docker-php-ext-install pdo pdo_mysql

#this will run the entry point from the base image