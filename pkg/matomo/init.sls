now we will install apache:
    pkg.installed:
      - name: apache2

adding official repo:
         cmd.run: 
             - name: ' sudo apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 0xF1656F24C74CD1D8 ' 

installtion of mariadb:
     cmd.run:
       - name: ' sudo apt-get -y install  mariadb-server mariadb-client ' 

adding php repo:
    cmd.run:
      - name: ' sudo add-apt-repository ppa:ondrej/php '

installing php  pre-request:
    pkg.installed:
       - name: software-properties-common
installing php:
    pkg.installed:
       - name: php7.2

downloading matomo:
     cmd.run: 
        - name: ' wget https://builds.matomo.org/piwik.zip ' 
add folder:
      cmd.run:
        - name: ' sudo mkdir /var/www/html/matomo ' 
unzip matomo: 
      cmd.run: 
        - name: ' unzip -o piwik.zip ' 
moove matomo:
      cmd.run:
        - name: ' sudo mv -f  piwik  /var/www/html/matomo ' 

adding privliges: 
      cmd.run: 
        - name: ' sudo chown -R www-data:www-data /var/www/html/matomo/ '
apply privliges:
      cmd.run: 
        - name: ' sudo chmod -R 755 /var/www/html/matomo/ ' 
adding conf file for apachhe2:
      file.managed: 
        - name: /etc/apache2/sites-available/matomo.conf
        - source: salt://confs/apache2/matomo.conf        

enabling matomo site:
     cmd.run: 
         - name: ' sudo a2ensite /etc/apache2/sites-available/matomo.conf ' 
         - name: ' sudo a2enmod rewrite ' 

restarting apache2:
      cmd.run:
         - name: ' sudo /etc/init.d/apache2 restart ' 


