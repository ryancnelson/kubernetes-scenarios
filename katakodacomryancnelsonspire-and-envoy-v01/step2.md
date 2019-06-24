inventory our docker containers:

`webcontainer=$( docker ps | grep envoy_web | awk '{print $1}') `{{execute HOST1}}

`echocontainer=$( docker ps | grep envoy_echo | awk '{print $1}') `{{execute HOST1}}

`spirecontainer=$(docker ps | grep envoy_spire_server | awk '{print $1}') `{{execute HOST1}}


augment our web container with some tools:
`docker exec -it $webcontainer sh -c "apk add curl ; apk add openssl; apk add bash ; apk add vim ; apk add tcpdump ; apk add npm ; npm install -g json"  `{{execute HOST1}}


try some debug commands:

connect directly from the web-container to the echo service:
`docker exec -it $webcontainer sh -c "curl http://echo:8081/ | json "  `{{execute HOST1}}

connect from web to envoy on spire_server, and see that it's expecting a client certificate  :
`docker exec -it $webcontainer sh -c "openssl s_client -connect envoy_spire-server_1.envoy_default:9081 < /dev/null 2>&1  | grep -A2 'Acceptable'   " `{{execute HOST1}}



