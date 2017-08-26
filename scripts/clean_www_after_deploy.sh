#!/bin/bash
#backup new code b4 clear dir.
if [ -d /tmp/web_src ]; then
   rm -fR /tmp/web_src
   mv /var/www/html/src /tmp/web_src
fi
mv /var/www/html/src /tmp/web_src

# clear web root
rm -fR /var/www/html/
mkdir -p /var/www/html/

# if nginx config exists move it.
if [ -d /tmp/web_src ]; then
   mv /tmp/web_src /var/www/html
fi

# if error page exists move it.
if [ -f /tmp/nginx_error.php ]; then
   mv /tmp/nginx_error.php /var/www/html/error.php
fi
chmod -R 755 /var/www/html
