
cd
sudo apt update

VERSION=php7.0


echo "############################################################"
echo "############################################################"
echo "######################|-----------|#########################"
echo "######################| Languages |#########################"
echo "######################|-----------|#########################"
echo "############################################################"
echo "############################################################"
sudo locale-gen "en_US.UTF-8"

sudo su
echo -e 'LANG="en_US.UTF-8" \n LANGUAGE="en_US.UTF-8" \n' > /etc/default/locale
exit


echo "############################################################"
echo "############################################################"
echo "######################|---------------|#####################"
echo "######################| Install MySQL |#####################"
echo "######################|---------------|#####################"
echo "############################################################"
echo "############################################################"
echo "mysql-server mysql-server/root_password password password" | sudo debconf-set-selections
echo "mysql-server mysql-server/root_password_again password password" | sudo debconf-set-selections
sudo apt install mysql-server mysql-client -y


echo "############################################################"
echo "############################################################"
echo "##################|--------------------|####################"
echo "##################| Installing Apache2 |####################"
echo "##################|--------------------|####################"
echo "############################################################"
echo "############################################################"
sudo apt install apache2 -y


echo "############################################################"
echo "############################################################"
echo "##############|----------------------------|################"
echo "##############| Installing Apache2 Library |################"
echo "##############|----------------------------|################"
echo "############################################################"
echo "############################################################"
sudo apt install php libapache2-mod-php -y


echo "############################################################"
echo "############################################################"
echo "###############|-----------------------------|##############"
echo "###############| Installing unzip, git, curl |##############"
echo "###############|-----------------------------|##############"
echo "############################################################"
echo "############################################################"
sudo apt install unzip git curl -y


echo "############################################################"
echo "############################################################"
echo "####################|---------------------|#################"
echo "####################| Installing composer |#################"
echo "####################|---------------------|#################"
echo "############################################################"
echo "############################################################"
curl -sS https://getcomposer.org/installer -o composer-setup.php
sudo php composer-setup.php --install-dir=/usr/local/bin --filename=composer
unlink composer-setup.php


echo "############################################################"
echo "############################################################"
echo "##################|-------------------|####################"
echo "##################| Installing $PHPVERSION |#####################"
echo "##################|-------------------|#####################"
echo "############################################################"
echo "############################################################"
sudo apt install $PHPVERSION -y


echo "############################################################"
echo "############################################################"
echo "###################|--------------------|###################"
echo "###################| Installing Modules |###################"
echo "###################|--------------------|###################"
echo "############################################################"
echo "############################################################"
sudo apt-get install $PHPVERSION-bcmath $PHPVERSION-cli $PHPVERSION-common $PHPVERSION-curl $PHPVERSION-dev $PHPVERSION-gd $PHPVERSION-json $PHPVERSION-mcrypt $PHPVERSION-mysql $PHPVERSION-mbstring $PHPVERSION-xml $PHPVERSION-zip -y


echo "############################################################"
echo "############################################################"
echo "#####################|------------------|###################"
echo "#####################| Configuring mode |###################"
echo "#####################|------------------|###################"
echo "############################################################"
echo "############################################################"
sudo chmod -R 775 /var/www/html
sudo chown -R www-data:www-data /var/www/html

cd /var/www/html
sudo rm *
clear
ifconfig
echo "Setup Complete." 

sudo su
echo "<?php phpinfo(); ?>" > /var/www/html/index.php
exit
