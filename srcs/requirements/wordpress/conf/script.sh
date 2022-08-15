#!/bin/sh
sleep 5

wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
mv -f wp-cli.phar /usr/local/bin/wp
/usr/local/bin/wp core download --allow-root --path="/var/www/html"
rm -f /var/www/html/wp-config.php
cp conf/wp-config.php /var/www/html/wordpress
cp conf/wp-config.php /var/www/html/

/usr/local/bin/wp	core install \
					--allow-root \
					--path="/var/www/html" \
					--url=${SERVER_NAME} \
					--title=${WP_TITLE} \
					--admin_user=${ADMIN_USER} \
					--admin_password=${ADMIN_PASSWORD} \
					--admin_email=${ADMIN_EMAIL} \
					--skip-email

/usr/local/bin/wp	user create \
					--allow-root \
					--path="/var/www/html" \
					${WP_USER} \
					${WP_EMAIL} \
					--role=author \
					--user_pass=${WP_PASSWORD}
exec	php-fpm7 -F