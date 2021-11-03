Nomad is a orcherstarion tool.

Nomad can run in three different modes:
- Server
- Client
- Dev

Region (default global) -> Datacenter -> Cluster -> Node -> SERVER or CLIENT -> Job --> allocations
Node: a machine, can be client or server
Server: is a brain of the cluster
Job: A containerized service with config. Run 3 instances of redis
alloc: A container for each job. Node has many alloc. Any alloc has one job


## Commands
`sudo nomad agent -dev -bind 0.0.0.0 -log-level INFO` -> start the Nomad dev server
`nomad node status` -> list of client + servers
`nomad server members` -> show servers and who is LEADER

`nomad job init` create a job config file
`nomad job run example.nomad` 
`nomad job status`
`nomad job status example`
`nomad job plan example.nomad` # dry run the job. Also gives a nomad job run with index, useful to make sure you are running the same job file you run plan before.
`nomad job stop example`
`nomad job stop -purge factorial-backend`
`nomad job run /etc/nomad/jobs.d/factorial-backend.nomad`

`nomad alloc status 12345` # get the id from the job status full command
You can get the ip and port for this allocation
`nomad alloc logs 12345`
`nomad alloc logs -stderr -tail ace9de76`

- Server
`nomad server members` # members of the servers

- Vagrant
`vagrant init hashicorp/bionic64` 
`vagrant up` # provison and up
`vagrant ssh`
`vagrant halt` $ stop
`vagrant destroy`
multi nodes https://www.vagrantup.com/docs/multi-machine
``/opt/puppetlabs/bin/puppetserver ca setup 

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

### Cluster
If you have problem, delete the /nomad/data folder.

Consul should be installed
`vagrant@n2:~$ consul agent -node=agent-two -bind=172.20.20.11 -enable-script-checks=true -data-dir=/tmp/consul -config-dir=/etc/consul.d`
`consul agent -server -bootstrap-expect=1 -node=agent-one -bind=172.20.20.10 -data-dir=/tmp/consul -config-dir=/etc/consul.d`
consul join 172.20.20.10 -> on client


`nomad agent -config=server.hcl`
```server.hcl
data_dir = "/home/vagrant/nomad/data"
bind_addr = "0.0.0.0"
server {
  enabled          = true
  bootstrap_expect = 2
}
consul {
    address = "127.0.0.1:8500"
    auto_advertise      = true
    client_auto_join    = true
}
advertise { 
    http = "172.20.20.11"  
    rpc  = "172.20.20.11"  
    serf = "172.20.20.11" 
}
```

```client.hcl
datacenter = "dc1"

# data_dir tends to be environment specific.
data_dir = "/home/vagrant/nomad/data"

client {
  enabled = true
#  servers = ["172.20.20.10:4647"]
}
```

Now consul node status should show n2. and nomad server member should show n1.