#!/usr/bin/env sh

# add an entry in the /etc/hosts as dockerhost which allows you to connect
# to the host via the name "dockerhost" like it was "localhost"
echo $(netstat -nr | grep '^0\.0\.0\.0' | awk '{print $2}') dockerhost >> /etc/hosts

# own the nginx folder or some scripts will timeout
chown -R www-data:www-data /var/lib/nginx

# continue with startup of webdevops/php-nginx
supervisord