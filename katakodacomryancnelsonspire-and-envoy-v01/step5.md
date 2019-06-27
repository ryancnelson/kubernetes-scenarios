
exec into the spire-container and look at the server entries we have set up:

`docker exec -it $spirecontainer sh -c "/opt/spire/bin/spire-server entry show" `{{execute HOST1}}

----

this means that if we jump into a node that's got the webserver x509pop (proof-of-possession) node-attestor set up,
then we get an SVID for "spiffe://domain.test/web-server"

`docker exec -it $webcontainer sh -c "/opt/spire/bin/spire-agent api fetch"`{{execute HOST1}}

... and likewise, if we do the same operation, except on a node that's recognized as an "echo" x509pop node:

`docker exec -it $echocontainer sh -c "/opt/spire/bin/spire-agent api fetch"`{{execute HOST1}}

... we get an SVID for "spiffe://domain.test/echo-server"









