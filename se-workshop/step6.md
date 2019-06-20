In the Stycale UI console, you should see something like:

<img style="width:40%; height:auto;"src="http://nelson.dev/manage_identites.jpg" > 

Now, let's map our legacy IDP kerberos principals to the cloud-native SPIFFE identities we've just defined. 



----
next, a quick detour:  let's look at our Kubernetes cluster, and the Active Directory we have set up for this workshop.


start a proxy to see this in the Katacoda environment:
----

## Task

This command *should* decrypt "kubeconfig.txt.encrypted.b64" 
YOU WILL NEED A PASSWORD HERE:

(ask ryan for the secret to decode it):

`/bin/echo "Ask Ryan for the password, then " ; cat kubeconfig.txt.encrypted.b64  | openssl enc -d -aes256 -base64 > kubeconfig ; cat kubeconfig | grep client-certificate-data | sed -e 's/.*: //' | base64 -d | openssl x509 -text -noout  || echo "problems with kubeconfig. please try again." && echo "looks good."   `{{execute HOST1}}

This command should set you up to use that kubeconfig for the rest of this demo:<br>
`export KUBECONFIG=/root/kubeconfig`{{execute HOST1}}

Test that this is working:
<br>
`kubectl get all --all-namespaces`{{execute HOST1}}

split your terminal screen into two panes, then start the kubectl proxy in the top:
<br>
`screen -c /root/.screenrc
:focus top
export KUBECONFIG=/root/kubeconfig ; kubectl proxy --address 0.0.0.0 --port=8001 --accept-hosts='.*'
:focus bottom
:mousetrack off
`{{execute HOST1}}

-----

# helpful clickable shortcuts for this demo:
set focus to the top pane of GNU-screen:
`:focus top`{{execute HOST1}}

set focus to the bottom pane of GNU-screen:
`:focus bottom`{{execute HOST1}}

set GNU-screen to disable mouse-tracking:
`:mousetrack off`{{execute HOST1}}

set GNU-screen to enable mouse-tracking:
`:mousetrack on`{{execute HOST1}}



---

`screen kubectl proxy --address 0.0.0.0 --port=8001 --accept-hosts='.*'  d; echo "what just happened was, we started a proxy in a GNU-screen window, then detached.  This message is normal." `{{execute HOST1}} 

start up the Kubernetes dashboard:
`ssh  -i ~/.ssh/scytale-workshop-key.rsa -l ${wsuser}  -p 2244 nelson.dev "cd sales-poc ; source ../.profile ; source .envrc ; make dash-up "  `{{execute HOST1}} 

start up an ldap-browser app to view our Active Directory:
`ssh  -i ~/.ssh/scytale-workshop-key.rsa -l ${wsuser}  -p 2244 nelson.dev "cd sales-poc ; source ../.profile ; source .envrc ; make lam-up "  `{{execute HOST1}} 
* <a href="https://[[HOST_SUBDOMAIN]]-8001-[[KATACODA_HOST]].environments.katacoda.com/api/v1/namespaces/kube-system/services/https:kubernetes-dashboard:/proxy/#!/overview?namespace=default">k8s-dashboard, via proxy:</a>

* <a href="https://[[HOST_SUBDOMAIN]]-8001-[[KATACODA_HOST]].environments.katacoda.com/api/v1/namespaces/kube-system/services/https:kubernetes-dashboard:/proxy/#!/overview?namespace=default">view k8s-dashboard, via proxy:</a>

* <a href="https://[[HOST_SUBDOMAIN]]-8001-[[KATACODA_HOST]].environments.katacoda.com/api/v1/namespaces/default/services/ldap-lam:/proxy/">view LDAP/AD settings, via proxy:</a>
LDAP LAM PASSWORD IS: RWq7=bcV+Dr


https://[[HOST_SUBDOMAIN]]-8001-[[KATACODA_HOST]].environments.katacoda.com/api/v1/namespaces/kube-system/services/https:kubernetes-dashboard:/proxy/


https://[[HOST_SUBDOMAIN]]-8001-[[KATACODA_HOST]].environments.katacoda.com/api/v1/namespaces/default/services/ldap-lam:/proxy/lam/templates/login.php

