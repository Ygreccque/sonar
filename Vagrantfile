Vagrant.require_version ">= 1.3.5"

Vagrant.configure(2) do |config|

	config.vm.boot_timeout = 300
	config.vm.hostname = "gitlab"

	config.vm.provider "virtualbox" do |vb|
    	vb.customize ["modifyvm", :id, "--cpuexecutioncap", "80"]
    	vb.memory = "1024"
			vb.name = "gitlab"
    end

	config.vm.box = "ubuntu/trusty64"

	config.vm.network "private_network", ip: "192.168.50.200"

	config.vm.synced_folder ".", "/home/vagrant/sync", disabled: true

	config.ssh.forward_agent = true
	config.ssh.insert_key = false
	config.ssh.private_key_path = [ "~/.ssh/id_rsa", "~/.vagrant.d/insecure_private_key" ]
        config.vm.provision "shell", path: "install.sh"
	#config.vm.provision "ansible" do |ansible|
        #ansible.playbook = "ansible/playbook.yml"
    #end

end
