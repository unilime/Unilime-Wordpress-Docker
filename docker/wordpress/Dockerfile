FROM wordpress:6.0.3-php7.4-apache
# Install packages under Debian
RUN apt-get update && \
    apt-get -y install git

RUN cd /tmp && \
    git clone https://github.com/xdebug/xdebug.git && \
    cd xdebug && \
    git checkout xdebug_3_1 && \
    phpize && \
    ./configure --enable-xdebug && \
    make && \
    make install && \
    rm -rf /tmp/xdebug

COPY ./php.ini-development /usr/local/etc/php/php.ini

RUN docker-php-ext-enable xdebug
