Install libraries using apt-get

**ATTENTION:** installs globally

1. `./install.sh` installing all the dependencies
2. `phpunit tests --test-suffix=.php`

**Experiments:**

1. In `install.sh` did NOT work 

```
wget -O phpunit https://phar.phpunit.de/phpunit-9.phar \
  && chmod +x phpunit \
  && sudo mv phpunit /usr/local/bin/phpunit

sudo apt-get install -y php-guzzle
sudo apt-get install -y --no-install-recommends php-symfony-process
```
