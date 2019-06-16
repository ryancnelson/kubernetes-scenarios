## Task
 

start up the spire server in pane 0:
`:focus top
:focus left
./spire-server run
`{{execute HOST1}}


... you should see spire-server logs in the upper-left terminal pane.

----

next:  let's see what workloads are registered, in the upper-right pane:
`:focus top
:focus right
./spire-server entry show`{{execute HOST1}}

... oh:  you probably got "0 entries". That's expected!

Let's create some!

`:focus top
:focus right
./spire-server entry create -parentID spiffe://example.org/host -spiffeID spiffe://example.org/host/front-end -selector unix:uid:0 -ttl 60`{{execute HOST1}}


`:focus top
:focus right
./spire-server entry create -parentID spiffe://example.org/host -spiffeID spiffe://example.org/host/blog -selector unix:uid:1000 -ttl 60`{{execute HOST1}}

------


focus pane 0:
`:focus top
:focus left
`{{execute HOST1}}

focus pane 1:
`:focus top
:focus right
`{{execute HOST1}}

focus pane 2:
`:focus top
:focus down
:focus left
`{{execute HOST1}}

focus pane 3:
`:focus top
:focus down
:focus right
`{{execute HOST1}}

focus pane 4:
`:focus bottom
:focus left
`{{execute HOST1}}

focus pane 5:
`:focus bottom
:focus right
`{{execute HOST1}}



