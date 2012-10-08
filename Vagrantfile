Vagrant::Config.run do |config|
  config.vm.box     = "ubuntu-precise64"
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"

  config.vm.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]

  config.vm.provision :shell do |shell|
    shell.inline = "sudo apt-get -y update"
  end

  config.vm.provision :chef_solo do |chef|
    # this assumes you have checked out under the umbrella
    chef.cookbooks_path = ["..", "cookbooks"]
    chef.log_level      = :debug

    chef.add_recipe     "chef-unattended-upgrades"
  end
end
