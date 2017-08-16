# Define image we want to build from
FROM webdevops/php-nginx:alpine-php7

# Modify the ENV
ENV DOCKER=1

# Copy all our app source code from local
ADD ./ /app
ADD ./conf/nginx/nginx-site.conf /opt/docker/etc/nginx/vhost.common.d/nginx-site.conf

# What ports we want to expose
EXPOSE 80 3306

# Next, start our server from the docker image script
CMD ["/app/scripts/startup.sh"]