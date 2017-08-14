#!/bin/bash
mv /var/www/html/src /tmp/web_src
rm -fR /var/www/html
mv /tmp/web_src /var/www/html 
chmod -R 644 /var/www/html
rm -fR /tmp/web_src
