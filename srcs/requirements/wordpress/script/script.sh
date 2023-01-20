rm -rf /home/project /var/www/html/wp-config.php
cd /var/www/html
if [ ! -f /var/www/html/wp-config.php ]; then
    wp config create --dbname=$dbname --dbuser=$dbuser --dbpass=$dbpass --dbhost=$dbhost --path=/var/www/html --allow-root --skip-check
    wp core install --url=$domaine --title=wordpress --admin_user=$adminuser --admin_password=$adminpass --admin_email=$adminmail --allow-root
    wp user create $username $usermail --role=subscriber --user_pass=$userpass --allow-root
fi
    wp plugin install redis-cache --activate --allow-root
    wp config set WP_REDIS_HOST $redishost --type=constant --allow-root
    wp config set WP_REDIS_PORT $redisport --type=constant --allow-root
    wp redis enable --allow-root
exec "$@"