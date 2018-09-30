adding the repo to the server: 
      cmd.run: 
          - name: ' wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add - '  
	  
	  
now we will instll jenkins:
      pkg.installed: 
          - name: jenkins
