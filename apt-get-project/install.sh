#!/bin/bash

mkdir ./bin

wget -O phpunit https://phar.phpunit.de/phpunit-9.phar \
  && chmod +x phpunit \
  && mv phpunit /usr/local/bin/phpunit

sudo apt-get install -y --no-install-recommends php-symfony-process=3.4.6+dfsg-1ubuntu0.1


php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" \
  && php -r "if (hash_file('sha384', 'composer-setup.php') === '756890a4488ce9024fc62c56153228907f1545c228516cbf63f885e036d37e9a59d27d63f46af1d4d07ee0f76181c7d3') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;" \
  && php composer-setup.php --filename=composer \
  && php -r "unlink('composer-setup.php');"


