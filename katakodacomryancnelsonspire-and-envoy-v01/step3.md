
try some debug commands:

----

connect directly from the web-container to the echo service, with "curl"
`docker exec -it $webcontainer sh -c "curl -s http://echo:8081/ | json "  `{{execute HOST1}}

Talking directly to the echo service works fine.

----

connect from web to envoy on spire_server, and see that it's expecting a client certificate  :
`docker exec -it $webcontainer sh -c "openssl s_client -connect echo:8001 < /dev/null 2>&1 `{{execute HOST1}}

(grep for the interesting bits:)
`docker exec -it $webcontainer sh -c "openssl s_client -connect echo:8001 < /dev/null 2>&1 ` | grep -A2 'Acceptable'   " `{{execute HOST1}}

----

try to use curl to that envoy.  *This will fail*, because we're not sending an acceptable client-certificate to satisfy mTLS: 
`docker exec -it $webcontainer sh -c "curl -vvv -k https://envoy_echo_1.envoy_default:8001/  | json" `{{execute HOST1}}


----

note that we *can* use curl to talk to envoy on it's regular TLS port, 8002 (not mTLS, which demands a client cert as well):
`docker exec -it $webcontainer sh -c "curl -vvv -k https://envoy_echo_1.envoy_default:8002/  | json" `{{execute HOST1}}




use that spiffe-agent binary to request a client certificate, key, and bundle, and write it to disk  :
`docker exec -it $webcontainer sh -c " ./scytale-agent api fetch svid --socketPath /tmp/agent.sock -write /tmp " `{{execute HOST1}}

cool, now we can curl from that envoy, because we have a certificate that's kosher: 
`docker exec -it $webcontainer sh -c "curl -vvv -k https://envoy_echo_1.envoy_default:8001/ --cacert /tmp/bundle.0.pem --key /tmp/svid.0.key --cert /tmp/svid.0.pem  | json" `{{execute HOST1}}


Note that we're not (yet) validating the certificate that envoy sends, because curl only validates the *hostname*.  So, we use '-k' to ignore that complaint.

Let's manually check that what's in the SAN field URI is the spiffe:// ID we're expecting, using the openssl command:

`docker exec -it $webcontainer sh -c "openssl s_client -connect envoy_spire-server_1.envoy_default:9081 < /dev/null 2>&1   | openssl x509 -text | egrep 'Subject Alternative|URI' " `{{execute HOST1}}


<img src="https://cdn-images-1.medium.com/max/800/0*QWV06vCtJu0KuuOA">




