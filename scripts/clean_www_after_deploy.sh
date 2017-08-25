#!/bin/bash
mv /usr/local/nginx/html/src /tmp/web_src
rm -fR /usr/local/nginx/html
mv /tmp/web_src /usr/local/nginx/html
chmod -R 755 /usr/local/nginx/html
rm -fR /tmp/web_src
