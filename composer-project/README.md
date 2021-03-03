Current project

PHP 8 is used to repeat the case with dockerfile.

Inspired by https://github.com/peterlafferty/phpunitinbuiltweb

1. install Composer 
```
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('sha384', 'composer-setup.php') === '756890a4488ce9024fc62c56153228907f1545c228516cbf63f885e036d37e9a59d27d63f46af1d4d07ee0f76181c7d3') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php composer-setup.php
php -r "unlink('composer-setup.php');"
```
2. `composer.phar` appears to run composer commands
3. `php -S localhost:8000` for starting server
4. `php composer.phar install` - installs dependencies into folder `vendor\`
5. `vendor/bin/phpunit IntegrationTests.php`

If you have issues with composer 
1. `sudo apt-get install php8.0-xml` - install extention for PHP 
2. `sudo apt-get install php8.0-mbstring`


**Warning:** Test `test200` is failing.
