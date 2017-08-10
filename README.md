WordPress Starter
=================

> A submodule installation of WordPress including the WordPress testing suite

### Setup

This project assumes you are using [Laravel Valet](https://laravel.com/docs/5.4/valet) with the [WordpressSubDirectoryValetDriver](https://github.com/invokemedia/valet-WordPress-subdirectory).

### Install

There is no difference from this project and a regular WordPress site.

But you will need to setup and configure the following files:

1. `wp-config-sample.php` to `wp-config.php`
2. `wp-tests-config-sample.php` to `wp-tests-config.php`

**Note**: Be sure to put different details in `wp-tests-config.php` as it will write to that database as part of the testing. You _can_ use the same database for testing, but it adds new tables with a prefix of `wptests_` to the database.

#### Apache Note

Be sure to [update the apache .htaccess file](/.htaccess#L9-L10) with your domain to the requests to WordPress are rewritten correctly.

### Testing

Just run `phpunit` from the root of the project.
