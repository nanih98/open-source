#!/bin/bash
# Autor NANI: dcr@iam-syscloud.com
# Important, quit sudo command when you are executing this script if YOU ARE USING DOCKER (as root inside the container). Error -->  "sudo: command not found"
if [[ -r /etc/os-release ]]; then
    . /etc/os-release
    echo "Running $NAME $VERSION" 

    if [[ $ID = *"ubuntu" || $ID = *"debian" ]]; then
    sleep 2 
    sudo apt-get update   
     
       elif [ $ID = *"centos" ]; then
        sleep 2 
        sudo yum update 
        
            elif [ $ID = *"fedora" ]; then
            sleep 2 
            sudo dnf update 

                elif [[ $ID = "opensuse-tumbleweed"  || $ID = "opensuse-leap" ]]; then
                sleep 2
                sudo zypper update 
    fi
else
    echo "Not running a distribution with /etc/os-release available"
fi
