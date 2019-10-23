#! /bin/bash
#Docker installation Debian based 
echo "Install docker on debian. Do it with root preferably"
sudo apt-get remove docker docker-engine docker.io containerd runc -y 
sudo apt-get update -y 
sudo apt-get install apt-transport-https ca-certificates curl gnupg2 software-properties-common -y 
sudo curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add - 
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/debian \
   $(lsb_release -cs) \
   stable"
sudo apt-get update -y 
sudo apt-get install docker-ce docker-ce-cli containerd.io -y
#Install docker-compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.24.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
# for problems with root path 
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose 
sudo systemctl start docker
sudo systemctl enable docker
sudo systemctl status docker
sudo usermod -aG docker root
