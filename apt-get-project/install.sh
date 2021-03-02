#!/bin/bash

mkdir ./bin

wget -O phpunit https://phar.phpunit.de/phpunit-9.phar \
  && chmod +x phpunit \
  && mv phpunit ./bin/phpunit

sudo apt-get install php-symfony-process -y

