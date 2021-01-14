FROM wordpress:5.6.0-fpm-alpine

# Add sudo in order to run wp-cli as the www-data user 
RUN apk add --update sudo less mysql-client

# Add WP-CLI 
RUN curl -o /bin/wp-cli.phar https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
COPY wp-su.sh /bin/wp
RUN chmod +x /bin/wp-cli.phar /bin/wp
RUN rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
