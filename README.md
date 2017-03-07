## 必要なもの
- Virtualbox(5.1.14)
- Vagrant(1.9.1)

## 使い方
適当なフォルダを作成し、Vagrantfileやansibleファイルをクローンする
```
$ mkdir -p ~/vagrants/
$ cd ~/vagrants/
$ git clone https://github.com/herpes/ansible-provision-vagrant.git
```

プロキシ設定を書き換える

```
sed -ie 's/{proxy:port}/12.34.56.78:8080/g' provision.sh
sed -ie 's/{proxy:port}/12.34.56.78:8080/g' ansible/group_vars/all.yml
```

`vagrant up` でVMの起動、およびAnsibleによる初期設定など実施

```
$ cd ansible-provision-vagrant
$ vagrant up
Bringing machine 'default' up with 'virtualbox' provider...
```
