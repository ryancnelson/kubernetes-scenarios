
fetch the trust bundle from the Scytale-server running in your kubernetes cluster, so we can tell the Scytale Console to trust it, and introduce itself: 
`server_pod=$(kubectl get pods --namespace=scytale --selector=app=scytale-server --output=jsonpath="{..metadata.name}")
kubectl exec --namespace=scytale $server_pod -- /opt/scytale/bin/scytale-server bundle show -manageUDSPath /run/scytale/server_manage.sock
echo "" `{{execute HOST1}}

`ssh  -i ~/.ssh/scytale-workshop-key.rsa -l ${wsuser}  -p 2244 nelson.dev "cd sales-poc ; source ../.profile ; source .envrc ; make show-saas "  `{{execute HOST1}}

*copy the `---CERTIFICATE STUFF---` above * 
... then go to http://console.demo.scytale.io/v2 , and ask the instructors for your login credentials.

*IF* this doesn't work for you, you may need to start, (or re-start) the scytale server and agent pods, to get a current trust-bundle.  Ask your instructor why :)
`ssh  -i ~/.ssh/scytale-workshop-key.rsa -l ${wsuser}  -p 2244 nelson.dev "cd sales-poc ; source ../.profile ; source .envrc ; make scytale-down ; sleep 1 ; make scytale-up ;  "   `{{execute HOST1}}

(after running this, if necessary, wait about a minute, then try the following again):
`ssh  -i ~/.ssh/scytale-workshop-key.rsa -l ${wsuser}  -p 2244 nelson.dev "cd sales-poc ; source ../.profile ; source .envrc ; make show-saas "   `{{execute HOST1}}

NOW: 
*copy the `---CERTIFICATE STUFF---` above * 
... then go to http://console.demo.scytale.io/v2 , and ask the instructors for your login credentials.



