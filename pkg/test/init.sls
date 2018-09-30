install R depndings: 
    cmd.run: 
        -  name: ' sudo apt-get install software-properties-common ' 
        -  name: ' python-software-properties '
        -  name: ' sudo add-apt-repository ppa:ubuntugis/ubuntugis-unstable ' 
        -  name: ' gpg --keyserver keyserver.ubuntu.com --recv-key E084DAB9 ' 
        -  name: ' gpg -a --export E084DAB9 | sudo apt-key add - '
        -  name: ' sudo add-apt-repository ppa:marutter/rrutter '
        -  name: ' sudo apt-get update '

install new featues: 
   pkg.installed: 
       - name:  r-base 
       - name:  r-base-dev 
       - name:  gdebi-core
       - name:   r-cran-reshape2 

down r studio installation: 
     cmd.run: 
        - name: ' wget https://download2.rstudio.org/rstudio-server-1.1.414-amd64.deb '
        - name: ' sudo dpkg -i --force-all /srv/rstudio-server-1.1.414-amd64.deb ' 
