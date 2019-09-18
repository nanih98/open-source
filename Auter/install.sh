#Script to install and setup auter
#Description of auter
# Auter provides automatic updates for Red Hat Enterprise Linux, CentOS, and Fedora Linux servers. Auter provides flexible scheduling to ensure that updates and reboots happen when you want them to. 
#It enables you to customize how updates run: you can download updates before you can apply them, 
#and you can run custom scripts before and after the updates. Auter is a more flexible option than yum-cron or dnf-automatic. 

#Install steps. I think it's also for debian based systems. Try it. 

sudo yum install auter -y || apt-get install auter -y || dnf install auter -y 

# Enable auter

sudo auter --enable

#Configure auter. I use my default config from my repo.

sudo yum install wget -y || apt-get install wget -y 

#Download code and copy it.
sudo cd /tmp && wget https://raw.githubusercontent.com/nanih98/open-source/master/Auter/auter.conf && cp -ar auter.conf /etc/auter/


#Download the cron configuration for auter. Configure it as you need it. I have it on for me to do these taread during non-production hours (at night). It is set to reset itself.

sudo cd /tmp && wget https://raw.githubusercontent.com/nanih98/open-source/master/Auter/auter && cp -ar auter /etc/cron.d





