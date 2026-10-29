FROM ubuntu:focal

ENV HOME=/root \
    DEBIAN_FRONTEND=noninteractive \
    LC_ALL=C.UTF-8 \
    LANG=en_US.UTF-8 \
    LANGUAGE=en_US.UTF-8

RUN set -eux; \
    apt-get update; \
    apt-get install -y --no-install-recommends \
        ca-certificates wget tar supervisor net-tools curl git cron p7zip-full zip logrotate \
        imagemagick zbar-tools; \
    apt-get autoremove -y --purge; \
    apt-get clean; \
    rm -rf /var/lib/apt/lists/* /var/cache/apt/* /usr/share/doc/* /usr/share/man/* /usr/share/info/*; \
    mkdir -p /app; \
    chown www-data:www-data -R /app

WORKDIR /app

VOLUME ["/app"]

CMD ["/usr/bin/supervisord"]
