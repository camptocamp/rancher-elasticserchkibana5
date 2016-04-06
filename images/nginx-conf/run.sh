#!/bin/bash

set -e

#while [ ! -f "/usr/share/elasticsearch/config/elasticsearch.yml" ]; do
    sleep 5
#done

exec nginx -g 'daemon off;'

