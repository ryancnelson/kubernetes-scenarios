## Task

Welcome!   Please wait for the workshop environment here to set itself up before continuing!
When it's ready, you'll see "environment setup.  Have fun!"

----


set your user up:

`/bin/echo -n "enter your user for the workshop ... [like, 'ws01'] : " ; read wsuser`{{execute HOST1}}

ssh to the workshop SE demo environment: (via a tunnel trick we hope works)
`ssh  -i ~/.ssh/scytale-workshop-key.rsa -l ${wsuser}  -p 2244 nelson.dev hostname `{{execute HOST1}}

pull in the kubernetes config file to the katacoda environment:
`ssh  -i ~/.ssh/scytale-workshop-key.rsa -l ${wsuser}  -p 2244 nelson.dev 'cat ./sales-poc/kube.config' > workshop-kubeconfig.yaml ; export KUBECONFIG=workshop-kubeconfig.yaml`{{execute HOST1}}

now, we should be able to see some pods:
(if so, then it's working)
`kubectl get pods --all-namespaces`{{execute HOST1}}


show-saas
`ssh  -i ~/.ssh/scytale-workshop-key.rsa -l ${wsuser}  -p 2244 nelson.dev "cd sales-poc ; source ../.profile ; source .envrc ; make show-saas "  `{{execute HOST1}}






