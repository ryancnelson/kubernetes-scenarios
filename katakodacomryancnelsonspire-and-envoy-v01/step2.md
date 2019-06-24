inventory our docker containers:

`webcontainer=$( docker ps | grep envoy_web | awk '{print $1}') `{{execute HOST1}}
`echocontainer=$( docker ps | grep envoy_echo | awk '{print $1}') `{{execute HOST1}}
`spirecontainer=$(docker ps | grep envoy_spire_server | awk '{print $1}') `{{execute HOST1}}


augment our web container with some tools:
`apk add curl ; apk add vim ; apk add tcpdump ; apk add npm ; npm install -g json `{{execute HOST1}}




look at what we've got:
https://[[HOST_SUBDOMAIN]]-8080-[[KATACODA_HOST]].environments.katacoda.com/

