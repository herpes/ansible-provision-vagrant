Vagrant.configure("2") do |config|
  config.vm.box = "centos7"
  config.vm.hostname = "main"

  config.vm.provider "virtualbox" do |vb|
    vb.name = "main"
    vb.customize ["modifyvm", :id, "--memory", "8000", "--cpus", "2", "--ioapic", "on"]
  end

  config.vm.network :private_network, ip: "192.168.33.10"
  config.vm.provision "shell", path: "provision.sh", privileged: false
  config.vm.synced_folder ".", "/vagrant", mount_options: ['dmode=775', 'fmode=664']
end
