## Task

The command below will populate an index.html file with links to the rest of this tutorial.
`curl https://gist.githubusercontent.com/ryancnelson/cbb9a76e65930875d202a9d88d16b51c/raw/143c6bb1092a7607146e928a678611211cfb113f/gistfile1.txt > index.html `{{execute HOST1}}


This command will run a webserver to serve up this file.
`python -mSimpleHTTPServer 8001`{{execute HOST1}}

This command *should* decrypt "kubeconfig.txt.encrypted":
`openssl enc -d -a -in kubeconfig.txt.encrypted -aes-256-cbc -pass file:config-secret-key > kubeconfig`{{execute HOST1}}

This command should set you up to use that kubeconfig for the rest of this demo:
`export KUBECONFIG=/root/kubeconfig`{{execute HOST1}}

Test that this is working:
`kubectl get all --all-namespaces`{{execute HOST1}}


Render port 8001: https://[[HOST_SUBDOMAIN]]-8001-[[KATACODA_HOST]].environments.katacoda.com/links.html

set focus to the top pane of GNU-screen:
`:focus top`{{execute HOST1}}
set focus to the bottom pane of GNU-screen:
`:focus bottom`{{execute HOST1}}


