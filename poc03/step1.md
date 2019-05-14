## Task

This command *should* decrypt "kubeconfig.txt.encrypted.b64" 
YOU WILL NEED A PASSWORD HERE:

(ask ryan for the secret to decode it):

`cat kubeconfig.txt.encrypted.b64  | openssl enc -d -aes256 -base64 > kubeconfig ; cat kubeconfig | grep client-certificate-data | sed -e 's/.*: //' | base64 -d | openssl x509 -text -noout  || echo "problems with kubeconfig. please try again." && echo "looks good."   `{{execute HOST1}}

This command should set you up to use that kubeconfig for the rest of this demo:<br>
`export KUBECONFIG=/root/kubeconfig`{{execute HOST1}}

Test that this is working:
<br>
`kubectl get all --all-namespaces`{{execute HOST1}}

split your terminal screen into two panes, then start the kubectl proxy in the top:
<br>
`screen -c /root/.screenrc:focus topexport KUBECONFIG=/root/kubeconfig ; kubectl proxy --address 0.0.0.0 --port=8001 --accept-hosts='.*':focus bottom:mousetrack off`{{execute HOST1}}

start kubectl proxy:
<br>
`:focus topexport KUBECONFIG=/root/kubeconfig ; kubectl proxy --address 0.0.0.0 --port=8001 --accept-hosts='.*':focus bottom:mousetrack off`{{execute HOST1}}

# helpful clickable shortcuts for this demo:
set focus to the top pane of GNU-screen:
`:focus top`{{execute HOST1}}

set focus to the bottom pane of GNU-screen:
`:focus bottom`{{execute HOST1}}

set GNU-screen to disable mouse-tracking:
`:mousetrack off`{{execute HOST1}}

set GNU-screen to enable mouse-tracking:
`:mousetrack on`{{execute HOST1}}

