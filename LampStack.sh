sudo apt update

echo "############################################################"
echo "############################################################"
echo "######################|-----------|#########################"
echo "######################| Languages |#########################"
echo "######################|-----------|#########################"
echo "############################################################"
echo "############################################################"
sudo locale-gen "en_US.UTF-8"
sudo dpkg-reconfigure locales
export LANGUAGE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

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
echo "###############|------------------------------|#############"
echo "###############| Installing unzip, git, curlL |#############"
echo "###############|------------------------------|#############"
echo "############################################################"
echo "############################################################"
sudo apt install unzip git curl -y

echo "############################################################"
echo "############################################################"
echo "##################|-------------------|####################"
echo "##################| Installing Php7.0 |#####################"
echo "##################|-------------------|#####################"
echo "############################################################"
echo "############################################################"
sudo apt install php7.0 -y

echo "############################################################"
echo "############################################################"
echo "######################|---------------|#####################"
echo "######################| Install MySQL |#####################"
echo "######################|---------------|####################"
echo "############################################################"
echo "############################################################"
sudo apt install mysql-server mysql-client -y

echo "############################################################"
echo "############################################################"
echo "###################|--------------------|###################"
echo "###################| Installing Modules |###################"
echo "###################|--------------------|###################"
echo "############################################################"
echo "############################################################"
sudo apt-get install php7.0-bcmath php7.0-cli php7.0-common php7.0-curl php7.0-dev php7.0-gd php7.0-json php7.0-json php7.0-mcrypt php7.0-mysql php7.0-mbstring php7.0-xml php7.0-zip -y

echo ""
echo "############################################################"
echo "############################################################"
echo "#####################|------------------|###################"
echo "#####################| Configuring mode |###################"
echo "#####################|------------------|###################"
echo "############################################################"
echo "############################################################"
sudo chmod -R 775 /var/www/html
sudo chown -R www-data:www-data /var/www/html
echo ""
echo ""
echo "Done!"

clear
ifconfig
echo "Setup Complete."
