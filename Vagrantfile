#defaultsvmsconfigs
Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/bionic64"
  config.vm.box_check_update = true
  config.vm.provider "virtualbox" do |config|
    config.memory = 512
    config.cpus = 2
    config.gui = false
  end
  #cacher
  config.vm.define "cacher" do |cacher|
    cacher.vm.hostname = "cacher"
    cacher.vm.network "public_network", ip: "192.168.50.51"
    cacher.vm.provision "shell", path: "configs/install_cacher.sh"
    cacher.vm.provision "shell", path: "configs/basic_configs.sh"
  end
  #mysql57
  config.vm.define "mysql57" do |mysql57|
    mysql57.vm.hostname = "mysql57"
    mysql57.vm.network "public_network", ip: "192.168.50.55"
    mysql57.vm.provision "shell", path: "configs/basic_configs.sh"
  end
  #ansible
  config.vm.define "ansible" do |ansible|
    ansible.vm.hostname = "ansible"
    ansible.vm.network "public_network", ip: "192.168.50.52"
    ansible.vm.provision "shell", path: "configs/basic_configs.sh"
    ansible.vm.provision "shell", path: "configs/install_ansible.sh"
  end
end
