FROM     python:3-alpine

MAINTAINER zigler zhang <zigler.zhang@gmail.com>

# Data and config volumes
VOLUME   /config /data /scripts

# Install FlexGet
RUN      pip3 install -U pip && pip3 install flexget==2.21.35 transmissionrpc==0.11

# Add start script
COPY     start.sh /scripts/
RUN      chmod +x /scripts/start.sh

WORKDIR  /config
CMD      ["/scripts/start.sh"]
