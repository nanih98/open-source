#!/bin/bash
# Important, quit sudo command when you are executing instructions if YOU ARE USING DOCKER WITH ROOT USER. "sudo: command not found"
if [[ -r /etc/os-release ]]; then
    . /etc/os-release
    echo "Running $NAME $VERSION" 

    if [[ $ID = *"ubuntu" || $ID = *"debian" ]]; then
    sleep 2 
    sudo apt-get update -y && apt-get install apt-transport-https ca-certificates curl gnupg-agent software-properties-common -y 
    if [ $ID = *"ubuntu" ]; then
    sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
    sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
    else 
    sudo curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
    sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable"
    fi 
    sudo apt-get update
    sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose -y 
    sudo systemctl enable docker && sudo systemctl start docker
    sudo usermod -aG docker root 

       elif [ $ID = *"centos" ]; then
        sleep 2 
        sudo yum update -y && sudo yum install -y yum-utils device-mapper-persistent-data lvm2 epel-release && \
        sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo && \
        sudo yum install docker-ce docker-ce-cli containerd.io docker-compose && \
        sudo systemctl enable docker && sudo systemctl start docker && \
        sudo usermod -aG docker root 

            elif [ $ID = *"fedora" ]; then
            sleep 2 
            sudo dnf update -y && dnf -y install dnf-plugins-core && \
            sudo dnf config-manager --add-repo https://download.docker.com/linux/fedora/docker-ce.repo && \
            sudo dnf install docker-ce docker-ce-cli containerd.io docker-compose -y && \
            sudo systemctl enable docker && sudo systemctl start docker && \
            sudo usermod -aG docker root 

                elif [[ $ID = "opensuse-tumbleweed"  || $ID = "opensuse-leap" ]]; then
                sleep 2
                sudo zypper update -y && zypper install docker -s 
    fi
else
    echo "Not running a distribution with /etc/os-release available"
fi

