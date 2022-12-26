- Vagrant  
`vagrant init hashicorp/bionic64`  
`vagrant up` # provison and up  
`vagrant ssh`  
`vagrant halt` # stop  
`vagrant destroy`  

multi nodes https://www.vagrantup.com/docs/multi-machine

```
Vagrant.configure("2") do |config|
  config.vm.box = "hashicorp/bionic64"
  config.vm.network "private_network", type: "dhcp"

  config.vm.define "puppet_server" do |web|
      config.vm.hostname = "puppetserver"
  end
  config.vm.define "puppet_client" do |web|
      config.vm.hostname = "puppetclient"
  end
```
