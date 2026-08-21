#!/bin/bash 



sudo apt update 

echo "installing servers "


sudo apt install wget net-tools unzip figlet apache2 -y &> /dev/null 
sudo systemctl start apache2
sudo systemctl enable apache2

echo "creating afolder "
mkdir -p webfiles
cd webfiles
sudo wget https://www.tooplate.com/zip-templates/2118_chilling_cafe.zip  
sudo unzip -o 2118_chilling_cafe.zip
sudo rm -rf /var/www/html/*
sudo cp -r 2118_chilling_cafe/* /var/www/html/

echo "deploying website " 
cd ..


sudo rm -rf webfiles

echo "restarting sever "
sudo systemctl restart apache2

echo " done " 
figlet done
