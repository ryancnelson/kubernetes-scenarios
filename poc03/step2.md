## Links:

for any of these links, you can open them in their own window, by using the Katacoda "open in new window/tab" icon:
<br><img src="http://ryan.net/misc/pop-to-new-window-icon.png">

------



* <a href="https://[[HOST_SUBDOMAIN]]-8001-[[KATACODA_HOST]].environments.katacoda.com/api/v1/namespaces/default/services/webapp1:/proxy/tasks/"webapp 1, via proxy:</a>
* <a href="https://[[HOST_SUBDOMAIN]]-8001-[[KATACODA_HOST]].environments.katacoda.com/api/v1/namespaces/default/services/webapp2:/proxy/tasks/">webapp 2, via proxy: </a>

------

* <a href="https://[[HOST_SUBDOMAIN]]-8001-[[KATACODA_HOST]].environments.katacoda.com/api/v1/namespaces/kube-system/services/https:kubernetes-dashboard:/proxy/#!/overview?namespace=default">k8s-dashboard, via proxy:</a>

* Use this token to authenticate to the Kubernetes dashboard: 
(click once in the text to copy the whole token)
`eyJhbGciOiJSUzI1NiIsImtpZCI6IiJ9.eyJpc3MiOiJrdWJlcm5ldGVzL3NlcnZpY2VhY2NvdW50Iiwia3ViZXJuZXRlcy5pby9zZXJ2aWNlYWNjb3VudC9uYW1lc3BhY2UiOiJrdWJlLXN5c3RlbSIsImt1YmVybmV0ZXMuaW8vc2VydmljZWFjY291bnQvc2VjcmV0Lm5hbWUiOiJrdWJlcm5ldGVzLWRhc2hib2FyZC10b2tlbi1sa2M0eiIsImt1YmVybmV0ZXMuaW8vc2VydmljZWFjY291bnQvc2VydmljZS1hY2NvdW50Lm5hbWUiOiJrdWJlcm5ldGVzLWRhc2hib2FyZCIsImt1YmVybmV0ZXMuaW8vc2VydmljZWFjY291bnQvc2VydmljZS1hY2NvdW50LnVpZCI6IjM5ODNlODQ2LTc1ZGEtMTFlOS05NTAxLTAyZThhYzBmMjFhMCIsInN1YiI6InN5c3RlbTpzZXJ2aWNlYWNjb3VudDprdWJlLXN5c3RlbTprdWJlcm5ldGVzLWRhc2hib2FyZCJ9.AorrxGxIdY2H5jcdDOLzXruOLg06rd-IRadwMj6CD3ldkF2r0eiOBUuwoAjx5RGzKA11_QQeluhxS_02B6syAocRdUl-TPNntwmBuQuWN4OGzYxzYWhlYGfLst0TqWK-etV2pbcKNOsYebBBG4XD2olgwG4SsRuXYSbw54_bfkBskb4_sJE8lRBMNBeSGTEGvgmBoO2YdJeWcx-hDQKFITqrUKiSxJ1eHtaHl3LjvDGYv8k5OOj9g1YfE14cNZ8W4HV7-PiI-lQntYXmgknMHN-Sn4RFdUAaT4wGaqxWrrVqzePE0C2Bd35V8KvRcmrd5xytCkz5X2jsosCJzw3cvQ`{{copy}}

If this token doesn't work for you, it may have been reset:  retrieve the current one by running `:focus bottom:mousetrack off./fetch-dash-token.sh`{{execute HOST1}}

(tip:  make sure you don't copy/paste any spaces from the end of the line, or linefeeds. This is problematic in GNU screen on some platforms.  You may have luck removing line-feeds and spaces, using a text editor.)
-----
* <a href="https://[[HOST_SUBDOMAIN]]-8001-[[KATACODA_HOST]].environments.katacoda.com/api/v1/namespaces/default/services/ldap-lam:/proxy/"> ldap UI, via proxy: </a>
use this password: `RWq7=bcV+Dr`{{copy}}
------
# helpful clickable links for this demo:

set focus to the top pane of GNU-screen:
`:focus top`{{execute HOST1}}

set focus to the bottom pane of GNU-screen:
`:focus bottom`{{execute HOST1}}

set GNU-screen to disable mouse-tracking:
`:mousetrack off`{{execute HOST1}}

set GNU-screen to enable mouse-tracking:
`:mousetrack on`{{execute HOST1}}

