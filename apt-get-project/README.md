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

2. Failing tests
```
PHPUnit 9.3.0 by Sebastian Bergmann and contributors.

.F                                                                  2 / 2 (100%)

Time: 00:00.146, Memory: 6.00 MB

There was 1 failure:

1) IntegrationTests::test200
Failed asserting that 404 matches expected 200.

/home/anast/Documents/coding/projects/phpAPI/apt-get-project/tests/IntegrationTests.php:39

FAILURES!
Tests: 2, Assertions: 2, Failures: 1.
```
