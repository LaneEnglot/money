#!/bin/bash
#backup new code b4 clear dir.
mv /var/www/html/src /tmp/web_src

# clear web root
rm -fR /var/www/html

# if nginx config exists move it.
if [ -f /tmp/web_src ]; then
   mv /tmp/web_src /var/www/html
fi

# if error page exists move it.
if [ -f /tmp/nginx_error.php ]; then
   mv /tmp/nginx_error.php /var/www/html/error.php
fi
chmod -R 755 /var/www/html
