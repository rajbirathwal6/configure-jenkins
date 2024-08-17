#!/bin/bash

# Update the package list
sudo apt-get update

# Install Java (OpenJDK 17 in this example)
sudo apt-get install -y openjdk-17-jre-headless

# Verify Java installation
java -version

# Download and add Jenkins keyring
sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key

# Add Jenkins repository to the sources list
echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian-stable binary/" | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null

# Update the package list again to include Jenkins repository
sudo apt-get update

# Install Jenkins
sudo apt-get install -y jenkins

# Enable Jenkins service to start on boot
sudo systemctl enable jenkins

# Start Jenkins service
sudo systemctl start jenkins
sudo cat /var/lib/jenkins/secrets/initialAdminPassword




