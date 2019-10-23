#! /bin/bash
#Docker installation Debian based 
sudo apt-get remove docker docker-engine docker.io containerd runc -y 
sudo apt-get update -y 
sudo apt-get install apt-transport-https ca-certificates curl gnupg2 software-properties-common -y 
sudo curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add - 
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/debian \
   $(lsb_release -cs) \
   stable"
sudo apt-get update -y 
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose -y 
sudo systemctl start docker
sudo systemctl enable docker
sudo systemctl status docker
sudo usermod -aG docker root
