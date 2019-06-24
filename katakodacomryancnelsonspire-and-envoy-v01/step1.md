
pull the github repo for this exercise:
`curl -O https://dl.google.com/go/go1.12.6.linux-amd64.tar.gz ; tar -C tar -C /usr/local -xzf go1.12.6.linux-amd64.tar.gz ; export PATH=$PATH:/usr/local/go/bin ;  git clone https://github.com/spiffe/spire.git`{{execute HOST1}}

build the environment and containers:
`cd spire/examples/envoy ; ./build.sh`{{execute HOST1}}

start up the docker-compose setup:  

`docker-compose up -d ; sleep 3 ; ./1-start-services.sh ; sleep 2 ; ./2-start-spire-agents.sh ; sleep 2 ; ./3-create-registration-entries.sh`{{execute HOST1}}


look at what we've got:
https://[[HOST_SUBDOMAIN]]-8080-[[KATACODA_HOST]].environments.katacoda.com/

