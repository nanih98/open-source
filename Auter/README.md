# Installation and setup of auter 

## What is auter?
**Description of auter**  
Auter provides automatic updates for Red Hat Enterprise Linux, CentOS, and Fedora Linux servers. Auter provides flexible scheduling to ensure that updates and reboots happen when you want them to. 
It enables you to customize how updates run: you can download updates before you can apply them, 
and you can run custom scripts before and after the updates. Auter is a more flexible option than yum-cron or dnf-automatic. 

# Usage
Copy or download install.sh script. The script installation will use the configuration files (cron and auter.conf) from this repo. Check it and change parameters as you need.

**So, paste the script to a file and then execute:**
> **Note:** Personally I prefer to copy the script to /tmp since it does not need to be persistent. 
```diff
$ cd /tmp && bash install.sh 
```
