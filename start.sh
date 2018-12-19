#!/usr/bin/env sh
OPT=""
if [ -f /config/.config-lock ]; then
    rm /config/.config-lock
fi

if [ "${LOG_PATH}" != "" ]; then
    OPT="${OPT} -l ${LOG_PATH}"
fi

echo "starting command... flexget ${OPT} daemon start"
flexget ${OPT} daemon start
