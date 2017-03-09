#!/usr/bin/env bash

#######################
# config
#######################

# プロキシを使用する場合、trueを設定
use_proxy=true

if [ $use_proxy = true ]; then
  export http_proxy="http://{proxy:port}"
  export https_proxy="http://{proxy:port}"
  sudo sh -c "echo 'proxy=http://{proxy:port}' >> /etc/yum.conf"
fi

if ! [ `which ansible` ]; then
  sudo yum install -y epel-release
  sudo yum install -y ansible
fi

ansible-playbook -i /vagrant/ansible/hosts /vagrant/ansible/playbook.yml -v -k
