FROM ubuntu:jammy

ENV HOME /root
ENV DEBIAN_FRONTEND noninteractive
ENV LC_ALL C.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8

RUN dpkg --add-architecture i386 && \
    apt-get update && \
    apt-get install -y software-properties-common libzbar-dev zbar-tools imagemagick \
        wget tar supervisor net-tools curl git cron p7zip-full zip nmap vim && \
    apt-get -y full-upgrade && apt-get clean && rm -rf /var/lib/apt/lists/* &&\
    mkdir /app && \
    chown www-data:www-data -R /app 
    
  

WORKDIR /app

VOLUME ["/app"]


CMD ["/usr/bin/supervisord"]
