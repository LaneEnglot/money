#!/bin/bash
mv /usr/local/nginx/html/src /tmp/web_src
rm -fR /usr/local/nginx/html
mv /tmp/web_src /usr/local/nginx/html
mv /tmp/html_err_50x.ht /usr/local/nginx/html/50x.html
chmod -R 755 /usr/local/nginx/html
rm -fR /tmp/web_src
