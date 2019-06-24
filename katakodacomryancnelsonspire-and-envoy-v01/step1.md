
pull the github repo for this exercise:
`git clone https://github.com/spiffe/spire.git`{{execute HOST1}}

build the environment and containers:
`cd spire ; ./build.sh`{{execute HOST1}}

start up the docker-compose setup:  
`./1-start-services.sh ; sleep 2 ; ./2-start-spire-agents.sh ; sleep 2 ; ./3-create-registration-entries.sh`{{execute HOST1}}


look at what we've got:
https://[[HOST_SUBDOMAIN]]-8080-[[KATACODA_HOST]].environments.katacoda.com/

