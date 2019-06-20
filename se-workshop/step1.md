## Task

Welcome!   Please wait for the workshop environment here to set itself up before continuing!
When it's ready, you'll see "environment setup.  Have fun!"

----


set your user up:

`echo "enter your user for the workshop ... [like, 'ws01'] : " ; read wsuser`{{execute HOST1}}

ssh to the workshop SE demo environment: (via a tunnel trick we hope works)
`ssh  -i ~/.ssh/scytale-workshop-key.rsa -l ${wsuser}  -p 2244 nelson.dev hostname `{{execute HOST1}}

pull in the kubernetes config file to the katacoda environment:
`ssh  -i ~/.ssh/scytale-workshop-key.rsa -l ${wsuser}  -p 2244 nelson.dev 'cat ./sales-poc/kube.config' > workshop-kubeconfig.yaml ; export KUBECONFIG=workshop-kubeconfig.yaml`{{execute HOST1}}

now, we should be able to see some pods:
(if so, then it's working)
`kubectl get pods --all-namespaces`{{execute HOST1}}

`ssh  -i ~/.ssh/scytale-workshop-key.rsa -l ${wsuser}  -p 2244 nelson.dev "cd sales-poc ; source .envrc ; make show-saas `{{execute HOST1}}






*Start the Demo, running in GNU-Screen*
(clicking the gray box here, that says "make demo", will execute that command in the terminal.  Or, you can type "make demo" yourself.)
`make demo`{{execute HOST1}}

What's my current hostname?
`hostname`{{execute HOST1}}

focus pane 0:
`:focus top:focus left`{{execute HOST1}}

focus pane 1:
`:focus top:focus right`{{execute HOST1}}

focus pane 2:
`:focus top:focus down:focus left`{{execute HOST1}}

focus pane 3:
`:focus top:focus down:focus right`{{execute HOST1}}

focus pane 4:
`:focus bottom:focus left`{{execute HOST1}}

focus pane 5:
`:focus bottom:focus right`{{execute HOST1}}


what's the current date?
`date`{{execute HOST1}}

