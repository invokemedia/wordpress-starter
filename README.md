WordPress Starter
=================

> A submodule installation of WordPress including the WordPress testing suite, linting, formatting, and wp-cli

## Cloning

Since this project has a submodule (WordPress) you need to clone recursively:

```
git clone git@github.com:invokemedia/wordpress-starter.git --recursive
```

## Setup

This project assumes you are using [Laravel Valet](https://laravel.com/docs/5.4/valet) with the [WordpressSubDirectoryValetDriver](https://github.com/invokemedia/valet-WordPress-subdirectory).

## Install

You will need to setup and configure the following files:

1. `wp-config-sample.php` to `wp-config.php`
2. `wp-tests-config-sample.php` to `wp-tests-config.php`
3. Fill out the empty strings that need values
4. Run `composer install`

**Note**: Be sure to put different details in `wp-tests-config.php` as it will write to that database as part of the testing. You _can_ use the same database for testing, but it adds new tables with a prefix of `wptests_` to the database.

#### Apache Note

Be sure to [update the apache .htaccess file](/.htaccess#L9-L10) with your domain to the requests to WordPress are rewritten correctly.

#### Nginx Note

You will need to add the `nginx-wp.conf` block of code to your sites virtual host file. You will need to [update the nginx-wp.conf file](/nginx-wp.conf#L2) with your domain before using it properly.

This installation also includes a copy of [invokemedia/laravel-helpers](https://github.com/invokemedia/laravel-helpers) which we use to complete some of the missing `array_*` methods in PHP. These functions help us write more concise code and reduce repeating blocks of code. This is expecially important when working with arrays of Post objects.

## Commands

The composer setup includes some commands that can be run manually or also run after an update:

1. `composer run test`: runs the phpunit tests
2. `composer run sniff`: runs phpcs command on the theme
3. `composer run lint`: runs php linting on the theme code
4. `composer run mess`: runs phpmd on the theme code
5. `composer run all`: runs test, sniff, and lint together

#### WP-CLI command

The [wp-cli](https://github.com/wp-cli/wp-cli) command is installed via composer. You can access the command as `./vendor/bin/wp`.

## Testing

Just run `phpunit` from the root of the project.
