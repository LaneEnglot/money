#!/bin/bash
isExistApp=`pgrep nginx`
if [[ -n  $isExistApp ]]; then
    systemctl stop nginx 
fi
rm -fR /usr/local/nginx/html
