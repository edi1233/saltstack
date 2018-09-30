install java:
  pkg.installed: 
     - name: openjdk-8-jdk 
     - name: daemon



donw installation file and install it: 
   cmd.run:
     - name: ' wget https://pkg.jenkins.io/debian/binary/jenkins_2.141_all.deb '

install jenkins:
   cmd.run: 
     - name: ' sudo dpkg -i --force-all jenkins_2.141_all.deb ' 

