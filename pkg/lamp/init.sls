now we will install apache:
    pkg.installed:
      - name: apache2
  
installtion of mysql:
     pkg.installed:
       - name: mysql-server 

adding php repo:
    cmd.run:
      - name: ' sudo add-apt-repository ppa:ondrej/php '

installing php  pre-request:
    pkg.installed:
       - name: software-properties-common
installing php:
    pkg.installed:
       - name: php7.2 

addons of php: 
    cmd.run: 
       - name: 'sudo apt-get -y  install php7.2-fpm php7.2-dev php7.2-zip php7.2-curl ' 

addons of php1:
    cmd.run:
       - name: ' sudo apt-get -y  install -y php7.2-xmlrpc php7.2-gd php7.2-mysql php7.2-mbstring php7.2-xml libapache2-mod-php7.2 '
