#defaultsvmsconfigs
Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/bionic64"
  config.vm.box_check_update = true
  config.vm.provider "virtualbox" do |config|
    config.memory = 512
    config.cpus = 2
    config.gui = false
  end
  #apt-cacher-ng
  config.vm.define "cacher" do |cacher|
    cacher.vm.hostname = "cacher"
    cacher.vm.network "public_network", ip: "10.2.6.74", bridge: "enp7s0"
    cacher.vm.provision "shell", path: "configs/basic_configs.sh"
    cacher.vm.provision "shell", path: "configs/install_cacher.sh"
  end
  #mysql57
  config.vm.define "mysql57" do |mysql57|
    mysql57.vm.hostname = "mysql57"
    mysql57.vm.network "public_network", ip: "10.2.6.78", bridge: "enp7s0"
    mysql57.vm.provision "shell", path: "configs/basic_configs.sh"
  end
  #Teste
  config.vm.define "teste" do |teste|
    teste.vm.hostname = "teste"
    teste.vm.network "public_network", ip: "10.2.6.79", bridge: "enp7s0"
    teste.vm.provision "shell", path: "configs/basic_configs.sh"
  end  
end
