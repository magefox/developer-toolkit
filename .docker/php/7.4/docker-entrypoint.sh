#!/bin/bash

# Disable xdebug by default
sed -i -e 's/^zend_extension/\;zend_extension/g' /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini

# Install magento cron
bin/magento cron:install

cron -f &
docker-php-entrypoint php-fpm
