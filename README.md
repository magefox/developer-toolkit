# Developer toolkit
Docker box for local development

## Documentation

## Prerequisites

This setup assumes you are running Docker on a computer with at least 4GB of allocated RAM, a dual-core, and an SSD hard drive. 

**Please note that if you already setup development environment on your real machine (Ex: LAMP stack) then you need to stop the equivalent services to avoid port conflict.** 
- Nginx on port 80, 443
- Mysql on port 3306
- RabbitMQ on port 5672
- Elastic Search on port 9200, 9300
- Redis no port 6379
- Mail Hog on port 1025, 8025

You need to create the **.env** file in the root folder. You can look at the **.env.sample.**

This configuration has been tested on Linux, MacOS. Windows is supported through the use of Docker on WSL.

## Basic Setup

1st you need to give the execution permission for all command in bin folder
```bash
chmod +x bash
chmod +x bin/*
```

 ## Useful commands

 There are lots of commands you can use in bin folder. But in this section I will list down those I think important and may use everyday
 - `bin/status`: check the status of all containers.
 - `bin/start`: start the containers.
 - `bin/stop`: stop the containers.
 - `bin/restart`: restart the containers.
 - `bin/removeall`: remove all docker related things: containers, networks, volumes, and images.
 - `bin/composer`: Run the composer binary. Ex. `bin/composer install`
 - `bin/grunt`: Run the grunt binary. Ex. `bin/grunt exec`
 - `bin/magento`: Run the Magento CLI. Ex: `bin/magento cache:flush`
 - `bin/setup-grunt`: Install and configure Grunt JavaScript task runner to compile .less files
 - `bin/xdebug`: enable/disable xdebug. For detail instruction, refer to documentation.
 - `bin/dev-urn-catalog-generate`: Generate URN's for PHPStorm and remap paths to local host. Restart PHPStorm after running this command.
 - `bin/redis`: access redis.
 - `bin/mysql`: access to mysql container.
 - `bin/mysql-export`: export database.
 - `bin/mysql-import`: import database.
 - `bin/bash`: Drop into the bash prompt of your phpfpm Docker container. The `phpfpm` container should be mainly used to access the filesystem within Docker.
 - `bin/cli`: Run any CLI command without going into the bash prompt. Ex. `bin/cli ls`
 - `bin/clinotty`: Run any CLI command with no TTY. Ex. `bin/clinotty chmod u+x bin/magento`
 - `bin/fixowns`: This will fix filesystem ownerships within the container.
 - `bin/fixperms`: This will fix filesystem permissions within the container.

### Composer Authentication

First setup Magento Marketplace authentication (details in the [DevDocs](http://devdocs.magento.com/guides/v2.0/install-gde/prereq/connect-auth.html)).

When you do the setup, system will ask you to input the key then it will automatically save to disk. Incase, you want to do it manually, copy `src/auth.json.sample` to `src/auth.json`. Then, update the username and password values with your Magento public and private keys, respectively.

## License

[MIT](https://opensource.org/licenses/MIT)