
sudo apt update -y


sudo apt install docker.io -y


sudo curl -L "https://github.com/docker/compose/releases/download/v2.21.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose


sudo usermod -aG docker $USER


sudo chmod 777 /var/run/docker.sock

sudo mkdir -p /home/ubuntu/jenkins_data
sudo chown -R 1000:1000 /home/ubuntu/jenkins_data


docker-compose up -d


