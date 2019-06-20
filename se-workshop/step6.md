In the Stycale UI console, you should see something like:

<img style="width:40%; height:auto;"src="http://nelson.dev/manage_identites.jpg" > 

Now, let's map our legacy IDP kerberos principals to the cloud-native SPIFFE identities we've just defined. 



----
next, a quick detour:  let's look at our Kubernetes cluster, and the Active Directory we have set up for this workshop.


start a proxy to see this in the Katacoda environment:


`screen kubectl proxy d `{{execute HOST1}} 

start up the Kubernetes dashboard:
`ssh  -i ~/.ssh/scytale-workshop-key.rsa -l ${wsuser}  -p 2244 nelson.dev "cd sales-poc ; source ../.profile ; source .envrc ; make show-saas "  `{{execute HOST1}} 

start up an ldap-browser app to view our Active Directory:
`ssh  -i ~/.ssh/scytale-workshop-key.rsa -l ${wsuser}  -p 2244 nelson.dev "cd sales-poc ; source ../.profile ; source .envrc ; make lam-up "  `{{execute HOST1}} 

* <a href="https://[[HOST_SUBDOMAIN]]-8001-[[KATACODA_HOST]].environments.katacoda.com/api/v1/namespaces/kube-system/services/https:kubernetes-dashboard:/proxy/#!/overview?namespace=default">view k8s-dashboard, via proxy:</a>

* <a href="https://[[HOST_SUBDOMAIN]]-8001-[[KATACODA_HOST]].environments.katacoda.com/api/v1/namespaces/default/services/ldap-lam:/proxy/">view LDAP/AD settings, via proxy:</a>
LDAP LAM PASSWORD IS: RWq7=bcV+Dr




