#!/usr/bin/env bash

export http_proxy="http://{proxy:port}"
export https_proxy="http://{proxy:port}"

sudo pkill yum
sudo sh -c "echo 'proxy=http://{proxy:port}' >> /etc/yum.conf"

if ! [ `which ansible` ]; then
  sudo yum install -y epel-release
  sudo yum install -y ansible
fi

ansible-playbook -i /vagrant/ansible/hosts /vagrant/ansible/playbook.yml -v -k
