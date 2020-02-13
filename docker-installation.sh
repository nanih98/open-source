#! /bin/bash
# Install docker
curl https://get.docker.com | sh 
usermod -aG docker root 
systemctl enable docker
systemctl start docker
# Install docker-compose (only for root)
curl -L "https://github.com/docker/compose/releases/download/1.25.3/docker-compose-$(uname -s)-$(uname -m)" -o /usr/bin/docker-compose
chmod +x /usr/bin/docker-compose
systemctl status docker
docker-compose --version
