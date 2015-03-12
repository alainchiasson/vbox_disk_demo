# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.provider "virtualbox" do |vb|
     vb.customize ["createhd", "--filename", "ephemeral.vdi", "--size", "1024"]
     vb.customize ["storageattach", :id, "--storagectl", "IDE Controller", "--medium", "ephemeral.vdi", "--port", "0", "--device", "1", "--type", "hdd"]
  end
  
end
