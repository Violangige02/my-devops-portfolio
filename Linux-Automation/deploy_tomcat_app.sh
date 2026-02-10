#!/bin/bash
# Description: Automated Deployment of Java ROOT.war to Tomcat on Port 5004
# Author: Viola Ngige

# 1. Install Tomcat
sudo yum install -y tomcat

# 2. Configure Custom Port (5004)
# Using sed to swap the default 8080 port for 5004 in server.xml
sudo sed -i 's/port="8080"/port="5004"/' /etc/tomcat/server.xml

# 3. Deploy ROOT.war
# Assuming the file was moved to /tmp via SCP
sudo mv /tmp/ROOT.war /var/lib/tomcat/webapps/ROOT.war

# 4. Update Firewall
sudo firewall-cmd --permanent --add-port=5004/tcp
sudo firewall-cmd --reload

# 5. Start and Enable Service
sudo systemctl enable tomcat
sudo systemctl restart tomcat

echo "Deployment complete. Check http://stapp03:5004"
