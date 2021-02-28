Nomad is a orcherstarion tool.

Nomad can run in three different modes:
- Server
- Client
- Dev

Region (default global) -> Datacenter -> Cluster -> Server -> Client -> Job --> allocations
Server: is a brain of the cluster
Job: is a declarative specification of tasks that Nomad should run.

## Commands
`nomad sudo nomad agent -dev -bind 0.0.0.0 -log-level INFO`
`nomad node status`

`nomad job init` #create a job config file
`nomad job run example.nomad` 
`nomad job status`
`nomad job status example`
`nomad job plan example.nomad` # dry run the job. Also gives a nomad job run with index, useful to make sure you are running the same job file you run plan before.
`nomad job stop example`

`nomad alloc status 12345` # get the id from the job status full command
`nomad alloc logs 12345`

- Server
`nomad server members` # members of the servers

- Vagrant
`vagrant up` # provison and up
`vagrant ssh`
`vagrant halt` $ stop
`vagrant destroy`
