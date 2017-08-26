#!/bin/bash
mv /var/www/html/src /tmp/web_src
rm -fR /var/www/html
mv /tmp/web_src /var/www/html
mv /tmp/nginx_error.php /var/www/html/error.php
chmod -R 755 /var/www/html
rm -fR /tmp/web_src
