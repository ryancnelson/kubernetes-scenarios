inventory our docker containers:

`webcontainer=$( docker ps | grep envoy_web | awk '{print $1}') `{{execute HOST1}}

`echocontainer=$( docker ps | grep envoy_echo | awk '{print $1}') `{{execute HOST1}}

`spirecontainer=$(docker ps | grep envoy_spire_server | awk '{print $1}') `{{execute HOST1}}


augment our web container with some tools:
`docker exec -it $webcontainer sh -c "apk add curl ; apk add bash ; apk add vim ; apk add tcpdump ; apk add npm ; npm install -g json"  `{{execute HOST1}}


try some debug commands:
`docker exec -it $webcontainer sh -c "curl http://echo:8081/ | json "  `{{execute HOST1}}


look at what we've got:
https://[[HOST_SUBDOMAIN]]-8080-[[KATACODA_HOST]].environments.katacoda.com/

