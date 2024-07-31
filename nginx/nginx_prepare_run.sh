#!/bin/bash
envsubst '${PLUTCHART_DOMAIN} ${SHOME_DOMAIN}' < /etc/nginx/nginx.conf.template > /etc/nginx/nginx.conf
envsubst '${PLUTCHART_DOMAIN}' < /etc/nginx/plutchart_ssl.conf.template > /etc/nginx/plutchart_ssl.conf
envsubst '${SHOME_DOMAIN}' < /etc/nginx/shome_ssl.conf.template > /etc/nginx/shome_ssl.conf
nginx -g "daemon off;"