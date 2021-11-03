pohttps://learn.hashicorp.com/tutorials/consul/get-started?in=consul/getting-started
Consul is a service discovery tool.


When a new Consul agent starts, it doesn't know about other agents; it is essentially a datacenter with one member. To add a new agent to an existing datacenter you give it the IP address of any other agent in the datacenter (either a client or a server), which causes the new agent to join the datacenter. Once the agent is a member of the new datacenter, it automatically learns about the other agents via gossip.

### Commands
`consul agent -dev` start in dev mode for testing
`consul leave` leave node from the datacenter
`consul members`
		`consul operator raft list-peers`

`consul join IP_OF_CLIENT_OR_SERVER` for manual join or auto join https://www.consul.io/docs/install/cloud-auto-join



### UI
http://localhost:8500/ui/dc1/services