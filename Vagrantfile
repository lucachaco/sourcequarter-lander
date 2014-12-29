# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.hostname = 'sourcequarter.dev'
  # run "vagrant hostmanager" after "vagrant up", then the hostname will be added to your /etc/hosts
  config.hostmanager.enabled = true
  config.hostmanager.manage_host = true
  config.hostmanager.ignore_private_ip = false
  config.hostmanager.include_offline = true
  config.hostmanager.ip_resolver = proc do |machine|
    result = ""
    machine.communicate.execute("ifconfig eth1") do |type, data|
      result << data if type == :stdout
    end
    (ip = /inet addr:(\d+\.\d+\.\d+\.\d+)/.match(result)) && ip[1]
  end


  config.vm.provider "virtualbox" do |v|
    v.memory = 512
  end

  config.vm.provision :shell do |shell|
    shell.path = "conf/bootstrap.sh"
  end

  config.vm.provision :hostmanager

  config.vm.network :private_network, type: :dhcp


end
