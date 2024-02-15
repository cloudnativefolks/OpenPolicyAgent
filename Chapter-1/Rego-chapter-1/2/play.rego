package play

import data.servers
import data.networks

default allow = false

allow {
    some server
    servers[server]
    server.protocols["http"]
    network := networks[server.network]
    network.public
}

violation[{"id": server.id, "violation": "insecure-protocol"}] {
    server := servers[_]
    server.protocols["telnet"]
}
