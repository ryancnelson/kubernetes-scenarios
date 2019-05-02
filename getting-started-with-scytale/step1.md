Kubeadm has been installed on the nodes. Packages are available for Ubuntu 16.04+, CentOS 7 or HypriotOS v1.0.1+.

The first stage of initialising the cluster is to launch the master node. The master is responsible for running the control plane components, etcd and the API server. Clients will communicate to the API to schedule workloads and manage the state of the cluster.

## Task

The command below will initialise the cluster with a known token to simplify the following steps.

`curl https://gist.githubusercontent.com/ryancnelson/cbb9a76e65930875d202a9d88d16b51c/raw/446bd78b28354047e998684bde592194a2178209/gistfile1.txt > /root/index.html `{{execute HOST1}}
`python -mSimpleHTTPServer 8080`{{execute HOST1}}

In production, it's recommend to exclude the token causing kubeadm to generate one on your behalf.

Render port 8080: https://[[HOST_SUBDOMAIN]]-8080-[[KATACODA_HOST]].environments.katacoda.com/
