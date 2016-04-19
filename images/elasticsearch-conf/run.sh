#!/bin/sh -e

FILE="/usr/share/docker-elasticsearch/config/elasticsearch.yml"

#mkdir -p $(dirname $FILE)/scripts

while [ ! -f "${FILE}" ]; do
    echo "waiting for ${FILE}"
    sleep 1
done

exec /docker-entrypoint.sh elasticsearch -E es.path.conf=/usr/share/docker-elasticsearch/config/
