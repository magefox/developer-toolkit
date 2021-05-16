FROM php:7.4-fpm

MAINTAINER Magefox <magefoxtech@gmail.com>

RUN apt-get update && apt-get install -y \
    # Fix php 7.4 "No package 'oniguruma' found"
    libonig-dev \
    libfreetype6-dev \
    libjpeg62-turbo-dev \
    libpng-dev \
    libxslt1-dev \
    # Fix php 7.4 "No package 'libzip' found"
    libzip-dev \
    zip \
    cron

RUN docker-php-ext-configure gd --with-freetype --with-jpeg

RUN docker-php-ext-install gd intl mbstring xsl zip bcmath soap sockets pdo_mysql opcache

# Install xdebug
RUN pecl channel-update pecl.php.net && pecl install xdebug
RUN docker-php-ext-enable xdebug \
    && sed -i -e 's/^zend_extension/\;zend_extension/g' /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini

# Download composer
RUN curl -sS https://getcomposer.org/installer | php -- --version=1.10.22 --install-dir=/usr/local/bin --filename=composer

COPY conf/php.ini /usr/local/etc/php/

WORKDIR /var/www/html

COPY docker-entrypoint.sh /docker-entrypoint.sh
RUN ["chmod", "+x", "/docker-entrypoint.sh"]
ENTRYPOINT ["/docker-entrypoint.sh"]
