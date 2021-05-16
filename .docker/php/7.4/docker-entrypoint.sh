#!/bin/bash

# Install magento cron
bin/magento cron:install

cron -f &
docker-php-entrypoint php-fpm
