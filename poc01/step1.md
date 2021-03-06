## Task

This command *should* decrypt "kubeconfig.txt.encrypted.b64" (ask ryan for the secret to decode it):
`cat kubeconfig.txt.encrypted.b64  | openssl enc -d -aes256 -base64 > kubeconfig`{{execute HOST1}}

This command should set you up to use that kubeconfig for the rest of this demo:
`export KUBECONFIG=/root/kubeconfig`{{execute HOST1}}

Test that this is working:
`kubectl get all --all-namespaces`{{execute HOST1}}

split your terminal screen into two panes:
`screen -c /root/.screenrc`{{execute HOST1}}

start kubectl proxy:
`:focus topexport KUBECONFIG=/root/kubeconfig ; kubectl proxy --address 0.0.0.0 --port=8001 --accept-hosts='.*'`{{execute HOST1}}

webapp 1, via proxy: https://[[HOST_SUBDOMAIN]]-8001-[[KATACODA_HOST]].environments.katacoda.com/api/v1/namespaces/default/services/webapp1:/proxy/tasks/

testing this:  webapp 1, via proxy:  <a href="https://[[HOST_SUBDOMAIN]]-8001-[[KATACODA_HOST]].environments.katacoda.com/api/v1/namespaces/default/services/webapp1:/proxy/tasks/" target="_blank">webapp1 in a new window</a>

webapp 2, via proxy: https://[[HOST_SUBDOMAIN]]-8001-[[KATACODA_HOST]].environments.katacoda.com/api/v1/namespaces/default/services/webapp2:/proxy/tasks/


k8s-dashboard, via proxy: https://[[HOST_SUBDOMAIN]]-8001-[[KATACODA_HOST]].environments.katacoda.com/api/v1/namespaces/kube-system/services/https:kubernetes-dashboard:/proxy/#!/overview?namespace=default

use this token:
eyJhbGciOiJSUzI1NiIsImtpZCI6IiJ9.eyJpc3MiOiJrdWJlcm5ldGVzL3NlcnZpY2VhY2NvdW50Iiwia3ViZXJuZXRlcy5pby9zZXJ2aWNlYWNjb3VudC9uYW1lc3BhY2UiOiJrdWJlLXN5c3RlbSIsImt1YmVybmV0ZXMuaW8vc2VydmljZWFjY291bnQvc2VjcmV0Lm5hbWUiOiJrdWJlcm5ldGVzLWRhc2hib2FyZC10b2tlbi05anBubiIsImt1YmVybmV0ZXMuaW8vc2VydmljZWFjY291bnQvc2VydmljZS1hY2NvdW50Lm5hbWUiOiJrdWJlcm5ldGVzLWRhc2hib2FyZCIsImt1YmVybmV0ZXMuaW8vc2VydmljZWFjY291bnQvc2VydmljZS1hY2NvdW50LnVpZCI6ImFjMzgzNDVhLTZjNDgtMTFlOS1iZGU1LTAyNWM5NjJjZmNhMCIsInN1YiI6InN5c3RlbTpzZXJ2aWNlYWNjb3VudDprdWJlLXN5c3RlbTprdWJlcm5ldGVzLWRhc2hib2FyZCJ9.D8eho3rsJ446KtLYmxrPAqxRCRcHJXwA1YX-ruEDqxcxzD0M0GN63PCJ3-8KIJqlDpjAIHOhnVsfFavtMPYhx4a1WjPzO5metqgNb9mvBClZf0Q1AuJbTBwQSMmgTNR3nO2vL7pX-ldW1qYA2oO8ukq2UO011Dk-Wzbmyw-kdr8-1uuiUaVFF6AYMxrnwB_ertLhA7gh4ZfsWeG_6pmZfWP7egN57ONrT6eVbSrthK-nIamRsngP1uZyE5Ob_eKuzgyxIrU-mnB3BhltqjCaO8ECULvoJCrPlv-q6-vVShM77qtqWaX2NSRjBV6eHj6GAEV-tTsgYqd9VkbWw-F_Tg


ldap UI, via proxy: https://[[HOST_SUBDOMAIN]]-8001-[[KATACODA_HOST]].environments.katacoda.com/api/v1/namespaces/default/services/ldap-lam:/proxy/

use this password: RWq7=bcV+Dr

set focus to the top pane of GNU-screen:
`:focus top`{{execute HOST1}}

set focus to the bottom pane of GNU-screen:
`:focus bottom`{{execute HOST1}}

set GNU-screen to disable mouse-tracking:
`:mousetrack off`{{execute HOST1}}

set GNU-screen to enable mouse-tracking:
`:mousetrack on`{{execute HOST1}}

