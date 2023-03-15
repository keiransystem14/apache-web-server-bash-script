cd ..
cd /var/www

if [ -d "world.linux.com" ];
then
	exit 0;
else
	sudo mkdir world.linux.com;
fi

cd world.linux.com

if [ -f "index.html" ];
then
	exit 0;
else
	sudo touch index.html;
	sudo chmod 666 index.html;
fi

if grep -q '<html>\|<head>\|<title>\|</head>\|<body>\|<h1>\|<p1>\|</body>\|</html>' index.html;
then
	exit 0;
else
	echo "<html>" >> index.html
	echo "	<head>" >> index.html
	echo "     <title>Welcome to World of Linux</title>" >> index.html
	echo "  </head>" >> index.html
	echo "  <body>" >> index.html
	echo "	  <h1>Welcome to Linux World Page</h1>" >> index.html
	echo "    <p1>This is demonstrated to ensure the automation of BASH scripting works and show how to improve my programming and life skills.</p1>" >> index.html
	echo "  </body>" >> index.html
	echo "</html>" >> index.html
fi

cd
ifconfig

if grep -q '192.168.1.224' /etc/hosts
then
	exit 0;
else
	sudo sed -i '4s/192.168.1.30 www.example.ubuntu.com/192.168.1.244 www.world.linux.com/' /etc/hosts

fi
	
cd /etc/apache2/sites-available 

if [-f "world.linux.com.conf" ];
then
	exit 0;
else
	sudo cp 000-default.conf world.linux.com.conf
fi

if grep -q 'world.linux.com' world.linux.conf
then
	exit 0;
else
	sudo sed -i '9s/www.example.com/www.world.linux.com/' world.linux.com.conf
	sudo sed -i '12s/html/world.linux.com/' world.linux.com.conf

fi

cd .. & cd sites-enabled

if [-f 'world.linux.com.conf' ];
then
	exit 0;
else
	sudo a2ensite world.linux.com
fi


sudo systemctl restart apache2
sudo systemctl status apache2
python3 -m webbrowser www.world.linux.com












