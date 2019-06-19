FROM alpine:3.9

RUN apk add --update alpine-sdk sudo git bash nano

ADD https://dl.bintray.com/php-alpine/key/php-alpine.rsa.pub /etc/apk/keys/php-alpine.rsa.pub

RUN apk --update add ca-certificates

RUN echo "http://dl-cdn.alpinelinux.org/alpine/v3.9/main" > /etc/apk/repositories && \
    echo "http://dl-cdn.alpinelinux.org/alpine/v3.9/community" >> /etc/apk/repositories && \
    echo "https://dl.bintray.com/php-alpine/v3.9/php-7.3" >> /etc/apk/repositories

RUN apk add --update \
    php \
    php-mbstring \
    php-fpm \
    php-zip \
    php-opcache \
    php-json \
    php-dom \
    php-xml \
    php-pcntl \
    php-pdo \
    php-mysqli \
    php-iconv \
    php-curl \
    php-bcmath \
    php-apache2
    
CMD ["/bin/bash"]
