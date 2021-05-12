# Developer Toolkit
Docker box for local development

## Documentation

## Prerequisites

This setup assumes you are running Docker on a computer with at least 4GB of allocated RAM, a dual-core, and an SSD hard drive. 

**Please note that if you already setup development environment on your real machine (Ex: LAMP stack) then you need to stop the equivalent services to avoid port conflict.** 
- Nginx on port 80, 443
- Mysql on port 3306
- Elastic Search on port 9200, 9300
- Mail Hog on port 1025, 8025

You need to create the **.env** file in the root folder. You can look at the **.env.sample.**

This configuration has been tested on Linux, MacOS. Windows is supported through the use of Docker on WSL.

## Basic Setup

1st you need to give the execution permission for all command in bin and command folder
```bash
chmod +x bin/*
chmox +x command/*
```

 ## Useful commands

 There are lots of commands you can use in bin folder. But in this section I will list down those I think important and may use everyday
 - `bin/toolkit init`: Init magento 2 project (Make sure existed .env file).
 - `bin/toolkit docker start`: Start the containers.
 - `bin/toolkit docker stop`: Stop the containers.
 - `bin/toolkit magento`: Run the Magento CLI. Ex: `bin/magento cache:flush`
 - `bin/toolkit xdebug`: Enable/disable xdebug.

### Composer Authentication

First setup Magento Marketplace authentication (details in the [DevDocs](http://devdocs.magento.com/guides/v2.0/install-gde/prereq/connect-auth.html)).

When you do the setup, system will ask you to input the key then it will automatically save to disk. Incase, you want to do it manually, copy `src/auth.json.sample` to `src/auth.json`. Then, update the username and password values with your Magento public and private keys, respectively.

## License

[MIT](https://opensource.org/licenses/MIT)