rm -rf /home/project /var/www/html/wp-config.php
if [ ! -f /var/www/html/wp-config.php ]; then
    wp config create --dbname="websitedb" --dbuser="bloto" --dbpass="secret2001@" --dbhost="mariadb" --path=/var/www/html --allow-root --skip-check
    wp core install --url="http://localhost/" --title=wordpress --admin_user="admin" --admin_password="admin" --admin_email="admin@gmail.com" --allow-root --path=/var/www/html
fi
exec "$@"