# -*- mode: ruby -*-
# vi: set ft=ruby :

ENV['VAGRANT_NO_PARALLEL'] = 'yes'

Vagrant.configure(2) do |config|

  config.vm.provision "shell", path: "bootstrap.sh"


  # k8mstr1 Node
  config.vm.define "k8mstr1" do |k8mstr1|
    k8mstr1.vm.box = "generic/ubuntu2204"
    k8mstr1.vm.hostname = "k8mstr1.k8lab.com"
    k8mstr1.vm.network "private_network", ip: "172.16.16.10"
    k8mstr1.vm.provider "virtualoadbalancerox" do |v|
      v.name = "k8mstr1"
      v.memory = 2048
      v.cpus = 2
    end
end
  

  # k8wrkr1 Node
  config.vm.define "k8wrkr1" do |k8wrkr1|
    k8wrkr1.vm.box = "generic/ubuntu2204"
    k8wrkr1.vm.hostname = "k8wrkr1.k8lab.com"
    k8wrkr1.vm.network "private_network", ip: "172.16.16.20"
    k8wrkr1.vm.provider "virtualoadbalancerox" do |v|
      v.name = "k8wrkr1"
      v.memory = 1024
      v.cpus = 2
    end
end

  # k8wrkr2 Node
  config.vm.define "k8wrkr2" do |k8wrkr2|
    k8wrkr2.vm.box = "generic/ubuntu2204"
    k8wrkr2.vm.hostname = "k8wrkr2.k8lab.com"
    k8wrkr2.vm.network "private_network", ip: "172.16.16.30"
    k8wrkr2.vm.provider "virtualoadbalancerox" do |v|
      v.name = "k8wrkr2"
      v.memory = 1024
      v.cpus = 2
    end
end	
end