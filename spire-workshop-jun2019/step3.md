## Task

Now, we need to add the registration entry to attest our node.
We will generate a one-time Join Token via spire-server token generate sub command, using the -spiffeID option to associate the Join Token with spiffe://example.org/host. The Join Token will be used for node attestation and the associated SPIFFE ID will be used to generate the SVID of the attested node:


we'll generate a token, and stash it in a text file so we don't lose it:
focus pane 1:
`:focus top
:focus right
./spire-server token generate -spiffeID spiffe://example.org/host | tee mytoken.txt`{{execute HOST1}}

now, let's put that token into an environment variable: (this is just to make our typing easier here)
`:focus top
:focus right
mytoken=$(cat mytoken.txt | sed -e 's/Token: //) ; echo token is: $mytoken `{{execute HOST1}}

-----


focus pane 0:
`:focus top
:focus left
`{{execute HOST1}}

focus pane 1:
`:focus top
:focus right
`{{execute HOST1}}

focus pane 2:
`:focus top
:focus down
:focus left
`{{execute HOST1}}

focus pane 3:
`:focus top
:focus down
:focus right
`{{execute HOST1}}

focus pane 4:
`:focus bottom
:focus left
`{{execute HOST1}}

focus pane 5:
`:focus bottom
:focus right
`{{execute HOST1}}



