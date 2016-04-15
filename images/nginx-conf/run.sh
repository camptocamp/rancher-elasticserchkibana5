#!/bin/bash

set -e

while [ ! -f "/etc/nginx/docker-nginx.conf" ]; do
    sleep 1
done

exec nginx -c /etc/nginx/docker-nginx.conf -g 'daemon off;'

