FROM  postgres:latest
MAINTAINER Pavel Pantyukhov <pantyukhov.p@gmail.com>

ADD init.sh /init.sh


RUN \
 chmod +x /init.sh
# apt-get update && apt-get dist-upgrade -y --force-yes && \
# apt-get install psmisc -y -q && \
# apt-get autoremove -y && apt-get clean && \
# rm -rf /var/cache/* && rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["/init.sh"]