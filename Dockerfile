FROM     python:3.9-slim

MAINTAINER zigler zhang <zigler.zhang@gmail.com>

# Data and config volumes
VOLUME   /config /data /scripts

# Install FlexGet
RUN      pip3 install --no-cache-dir -U pip && \
    pip3 install --no-cache-dir flexget==3.1.143 transmission-rpc==3.3.0

# Add start script
COPY     start.sh /scripts/
RUN      chmod +x /scripts/start.sh

WORKDIR  /config
CMD      ["/scripts/start.sh"]
