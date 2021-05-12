#!/bin/bash

COMMAND=$1
shift;
ARGS="$@"

if [ -n "$COMMAND" ]; then
    case "$COMMAND" in
        magerun2) bin/n98-magerun2 "$@" ;;
        xdebug)
            if [ "$1" == "disable" ]; then
                bin/docker php sed -i -e 's/^zend_extension/\;zend_extension/g' /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini
                bin/docker stop
                bin/docker start
                echo "Xdebug has been disabled."
            elif [ "$1" == "enable" ]; then
                bin/docker php sed -i -e 's/^\;zend_extension/zend_extension/g' /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini
                bin/docker stop
                bin/docker start
                echo "Xdebug has been enabled."
            else
                echo "Please specify either 'enable' or 'disable' as an argument"
            fi ;;
        *) bin/$COMMAND "$@" ;;
    esac
else
	echo "Command not found."
fi