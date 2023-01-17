rm -rf /home/project /var/www/html/wp-config.php
cd /var/www/html
if [ ! -f /var/www/html/wp-config.php ]; then
    wp config create --dbname="websitedb" --dbuser="bloto" --dbpass="secret2001@" --dbhost="mariadb" --path=/var/www/html --allow-root --skip-check
    wp core install --url="http://localhost/" --title=wordpress --admin_user="admin" --admin_password="admin" --admin_email="admin@gmail.com" --allow-root
fi
    wp plugin install redis-cache --activate --allow-root
    wp config set WP_REDIS_HOST redis --type=constant --allow-root
    wp config set WP_REDIS_PORT 6379 --type=constant --allow-root
    wp redis enable --allow-root
exec "$@"