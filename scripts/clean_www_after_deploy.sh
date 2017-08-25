#!/bin/bash
mv /var/www/html/src /tmp/web_src
rm -fR /var/www/html
mv /tmp/web_src /var/www/html
mv /tmp/html_err_50x.ht /var/www/html/50x.html
chmod -R 755 /var/www/html
rm -fR /tmp/web_src
