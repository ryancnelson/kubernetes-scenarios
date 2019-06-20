## Task



fetch the trust bundle for your kubernetes cluster, so we can let the Scytale Console know to trust it: 
`ssh  -i ~/.ssh/scytale-workshop-key.rsa -l ${wsuser}  -p 2244 nelson.dev "cd sales-poc ; source ../.profile ; source .envrc ; make show-saas "  | less  `{{execute HOST1}}

*copy the `---CERTIFICATE STUFF---` above * 
... then go to http://console.demo.scytale.io/ , and ask the instructors for your login credentials.

*IF* this doesn't work for you, you may need to start, (or re-start) the scytale server and agent pods, to get a current trust-bundle.  Ask your instructor why :)
`ssh  -i ~/.ssh/scytale-workshop-key.rsa -l ${wsuser}  -p 2244 nelson.dev "cd sales-poc ; source ../.profile ; source .envrc ; make scytale-down ; sleep 1 ; make scytale-up ;  "   `{{execute HOST1}}

(after running this, if necessary, wait about a minute, then try the following again):
`ssh  -i ~/.ssh/scytale-workshop-key.rsa -l ${wsuser}  -p 2244 nelson.dev "cd sales-poc ; source ../.profile ; source .envrc ; make show-saas "   `{{execute HOST1}}




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

