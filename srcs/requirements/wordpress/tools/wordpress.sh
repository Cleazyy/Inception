if [ ! -d "/var/www/html" ]; then
  mkdir -p /var/www/html
fi

if [ ! -f /var/www/html/wp-config.php ]; then
	# Allows php to listen on all available interfaces
	sed -i 's#listen = 127.0.0.1:9000#listen = 0.0.0.0:9000#' /etc/php8/php-fpm.d/www.conf

	# Downloads wordpress-cli
	wget -O /usr/local/bin/wp https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
	chmod +x /usr/local/bin/wp

	# Changes directory to install wordpress
	cd /var/www/html

	# Downloads wordpress
	wp core download

	# Create the wordpress configuration file
	wp config create \
		--dbname="${MYSQL_DATABASE}" \
		--dbuser="${MYSQL_USER}" \
		--dbpass="${MYSQL_PASSWORD}" \
		--dbhost=mariadb

	# Install wordpress
	wp core install \
		--url="${DOMAIN_NAME}" \
		--title="${WP_TITLE}" \
		--admin_user="${WP_ROOT_USER}" \
		--admin_password="${WP_ROOT_PASSWORD}" \
		--admin_email="${WP_ROOT_EMAIL}"

	# Create wordpress user
	wp user create "${WP_USER}" "${WP_USER_EMAIL}" \
		--user_pass="${WP_USER_PASSWORD}" \
		--role=author
fi

# Executes php
php-fpm8 -F -R
