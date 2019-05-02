## Task

The command below will populate an index.html file with links to the rest of this tutorial.
`curl https://gist.githubusercontent.com/ryancnelson/cbb9a76e65930875d202a9d88d16b51c/raw/143c6bb1092a7607146e928a678611211cfb113f/gistfile1.txt > index.html `{{execute HOST1}}


xxxxx This command will run a webserver to serve up this file.
`xxx python -mSimpleHTTPServer 8001`{{execute HOST1}}


split your screen into two panes:
`screen -c /root/.screenrc`{{execute HOST1}}


This command *should* decrypt "kubeconfig.txt.encrypted":
`openssl enc -d -a -in kubeconfig.txt.encrypted -aes-256-cbc -pass file:config-secret-key > kubeconfig`{{execute HOST1}}

This command should set you up to use that kubeconfig for the rest of this demo:
`export KUBECONFIG=/root/kubeconfig`{{execute HOST1}}

Test that this is working:
`kubectl get all --all-namespaces`{{execute HOST1}}


Render port 8001: https://[[HOST_SUBDOMAIN]]-8001-[[KATACODA_HOST]].environments.katacoda.com/links.html

k8s-dashboard, via proxy: https://[[HOST_SUBDOMAIN]]-8001-[[KATACODA_HOST]].environments.katacoda.com/api/v1/namespaces/kube-system/services/https:kubernetes-dashboard:/proxy/#!/overview?namespace=default

use this token:
eyJhbGciOiJSUzI1NiIsImtpZCI6IiJ9.eyJpc3MiOiJrdWJlcm5ldGVzL3NlcnZpY2VhY2NvdW50Iiwia3ViZXJuZXRlcy5pby9zZXJ2aWNlYWNjb3VudC9uYW1lc3BhY2UiOiJrdWJlLXN5c3RlbSIsImt1YmVybmV0ZXMuaW8vc2VydmljZWFjY291bnQvc2VjcmV0Lm5hbWUiOiJrdWJlcm5ldGVzLWRhc2hib2FyZC10b2tlbi05anBubiIsImt1YmVybmV0ZXMuaW8vc2VydmljZWFjY291bnQvc2VydmljZS1hY2NvdW50Lm5hbWUiOiJrdWJlcm5ldGVzLWRhc2hib2FyZCIsImt1YmVybmV0ZXMuaW8vc2VydmljZWFjY291bnQvc2VydmljZS1hY2NvdW50LnVpZCI6ImFjMzgzNDVhLTZjNDgtMTFlOS1iZGU1LTAyNWM5NjJjZmNhMCIsInN1YiI6InN5c3RlbTpzZXJ2aWNlYWNjb3VudDprdWJlLXN5c3RlbTprdWJlcm5ldGVzLWRhc2hib2FyZCJ9.D8eho3rsJ446KtLYmxrPAqxRCRcHJXwA1YX-ruEDqxcxzD0M0GN63PCJ3-8KIJqlDpjAIHOhnVsfFavtMPYhx4a1WjPzO5metqgNb9mvBClZf0Q1AuJbTBwQSMmgTNR3nO2vL7pX-ldW1qYA2oO8ukq2UO011Dk-Wzbmyw-kdr8-1uuiUaVFF6AYMxrnwB_ertLhA7gh4ZfsWeG_6pmZfWP7egN57ONrT6eVbSrthK-nIamRsngP1uZyE5Ob_eKuzgyxIrU-mnB3BhltqjCaO8ECULvoJCrPlv-q6-vVShM77qtqWaX2NSRjBV6eHj6GAEV-tTsgYqd9VkbWw-F_Tg


ldap UI, via proxy: https://[[HOST_SUBDOMAIN]]-8001-[[KATACODA_HOST]].environments.katacoda.com/api/v1/namespaces/default/services/ldap-lam:/proxy/

use this password: RWq7=bcV+Dr

webapp 1, via proxy: https://[[HOST_SUBDOMAIN]]-8001-[[KATACODA_HOST]].environments.katacoda.com/api/v1/namespaces/default/services/webapp1:/proxy/tasks/

webapp 2, via proxy: https://[[HOST_SUBDOMAIN]]-8001-[[KATACODA_HOST]].environments.katacoda.com/api/v1/namespaces/default/services/webapp2:/proxy/tasks/

set focus to the top pane of GNU-screen:
`:focus top`{{execute HOST1}}

set focus to the bottom pane of GNU-screen:
`:focus bottom`{{execute HOST1}}

set GNU-screen to disable mouse-tracking:
`:mousetrack off`{{execute HOST1}}

set GNU-screen to enable mouse-tracking:
`:mousetrack on`{{execute HOST1}}

start kubectl proxy:
`:focus topexport KUBECONFIG=/root/kubeconfig ; kubectl proxy --address 0.0.0.0 --port=8001 --accept-hosts='.*'`{{execute HOST1}}
