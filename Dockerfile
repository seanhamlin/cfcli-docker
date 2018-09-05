FROM alpine:latest

WORKDIR /app

RUN apk --no-cache add \
    bash \
    ca-certificates \
    git \
    curl \
    unzip \
    php7 \
    php7-openssl \
    php7-curl \
    php7-json \
    php7-dom \
    php7-phar \
    php7-tokenizer \
    php7-iconv

# Fix an issue with iconv
# @see https://github.com/docker-library/php/issues/240
RUN apk add --no-cache --repository http://dl-3.alpinelinux.org/alpine/edge/testing gnu-libiconv
ENV LD_PRELOAD /usr/lib/preloadable_libiconv.so php

# Download the latest phar file from Google Drive.
RUN curl -sL 'https://drive.google.com/uc?export=download&id=1ekyddD40wrUBT0GCjHo3Kh1JEL8skLqf' > /usr/local/bin/cfcli \
    && chmod +x /usr/local/bin/cfcli

COPY resources/php.ini /etc/php7/php.ini

RUN cfcli

CMD ["php", "-a"]
