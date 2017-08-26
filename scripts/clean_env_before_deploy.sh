#!/bin/bash
# stop nginx if running
isExistApp=`pgrep nginx`
if [[ -n  $isExistApp ]]; then
    systemctl stop nginx
fi
# clear dir contents b4 code deploy extract...
rm -fR /var/www/html/*
