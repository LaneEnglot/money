#!/bin/bash
isExistApp=`pgrep nginx`
if [[ -n  $isExistApp ]]; then
    systemctl nginx stop   
fi
rm -fR /var/www/html