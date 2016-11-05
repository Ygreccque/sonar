#!/bin/bash 


sudo apt-get update --fix-missing 
sudo apt-get -y install ca-certificates curl openssh-server postfix

cd /tmp && curl -LO https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh

sudo bash /tmp/script.deb.sh 

sudo apt-get install -y gitlab-ce


sudo gitlab-ctl reconfigure

sudo ufw status

sudo ufw allow http
sudo ufw allow OpenSSH

sudo ufw status 

sudo ufw enable



