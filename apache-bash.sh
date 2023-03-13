cd ..
cd /var/www
sudo mkdir world.linux.com
cd world.linux.com
sudo touch index.html
sudo chmod 666 index.html
echo "<html>" >> index.html
echo "	<head>" >> index.html
echo "     <title>Welcome to World of Linux</title>" >> index.html
echo "  </head>" >> index.html
echo "  <body>" >> index.html
echo "	  <h1>Welcome to Linux World Page</h1>" >> index.html
echo "    <p1>This is demonstrated to ensure the automation of BASH scripting works and show how to improve my programming and life skills.</p1>" >> index.html
echo "  </body>" >> index.html
echo "</html>" >> index.html
cd
ifconfig
sudo sed -i '4s/192.168.1.30 www.example.ubuntu.com/192.168.1.244 www.world.linux.com/' /etc/hosts

cd /etc/apache2/sites-available 
sudo cp 000-default.conf world.linux.com.conf
sudo sed -i '9s/www.example.com/www.world.linux.com/' world.linux.com.conf
sudo sed -i '12s/html/world.linux.com/' world.linux.com.conf
sudo a2ensite world.linux.com
sudo systemctl restart apache2
sudo systemctl status apache2
python3 -m webbrowser www.world.linux.com












