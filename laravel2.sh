cd
sudo apt-get update
sudo apt-get upgrade -y





sudo add-apt-repository ppa:ondrej/php
sudo apt-get update
sudo apt-get install apache2 libapache2-mod-php7.2 php7.2 php7.2-xml php7.2-gd php7.2-opcache php7.2-mbstring -y





cd /tmp
curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer






sudo fallocate -l 1G /swapfile
sudo chmod 600 /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile
sudo su
sudo echo "/swapfile swap swap defaults 0 0  LABEL=cloudimg-rootfs   /        ext4   defaults        0 0" > /etc/fstab 
exit





cd /var/www/html
sudo composer create-project laravel/laravel your-project --prefer-dist





sudo chgrp -R www-data /var/www/html/your-project
sudo chmod -R 775 /var/www/html/your-project/storage





cd /etc/apache2/sites-available
sudo nano laravel.conf




sudo su
echo '
<VirtualHost *:80>
    ServerName yourdomain.tld

    ServerAdmin webmaster@localhost
    DocumentRoot /var/www/html/your-project/public

    <Directory /var/www/html/your-project>
        AllowOverride All
    </Directory>

    ErrorLog ${APACHE_LOG_DIR}/error.log
    CustomLog ${APACHE_LOG_DIR}/access.log combined
</VirtualHost>
' >| /etc/apache2/sites-available/000-default.conf
exit


sudo a2dissite 000-default.conf
sudo a2ensite laravel.conf
sudo a2enmod rewrite
sudo service apache2 restart

clear
ifconfig



