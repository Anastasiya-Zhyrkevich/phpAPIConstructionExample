#!/bin/bash

mkdir ./bin

# wget -O phpunit https://phar.phpunit.de/phpunit-9.phar \
#  && chmod +x phpunit \
#  && sudo mv phpunit /usr/local/bin/phpunit

# sudo apt-get install -y php-guzzle
# sudo apt-get install -y --no-install-recommends php-symfony-process

php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" \
  && php -r "if (hash_file('sha384', 'composer-setup.php') === '756890a4488ce9024fc62c56153228907f1545c228516cbf63f885e036d37e9a59d27d63f46af1d4d07ee0f76181c7d3') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;" \
  && php composer-setup.php --filename=composer \
  && php -r "unlink('composer-setup.php');"

./composer global require phpunit/phpunit=9.3 
./composer global require symfony/process=3.3 
./composer global require guzzlehttp/guzzle=6.3

sudo ln -s ~/.config/composer/vendor/bin/phpunit phpunit
 	
export PATH=~/.config/composer/vendor/bin:$PATH

rm -rf composer
