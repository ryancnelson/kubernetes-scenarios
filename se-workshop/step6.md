In the Stycale UI console, you should see something like:

<img style="width:40%; height:auto;"src="http://nelson.dev/manage-identities.jpg" > 

Now, let's map our legacy IDP kerberos principals to the cloud-native SPIFFE identities we've just defined. 



----
first, a detour:  let's look at our Kubernetes cluster, and the Active Directory we have set up for this workshop.


start a proxy to see this in the Katacoda environment:
`ssh  -i ~/.ssh/scytale-workshop-key.rsa -l ${wsuser}  -p 2244 nelson.dev "cd sales-poc ; source ../.profile ; source .envrc ; make show-saas "  `{{execute HOST1}} 


`screen kubectl proxy ; d `{{execute HOST1}} 



In the resulting menu:

Keep the drop-down menu set to "Kubernetes (SAT)" (service account token).

Now, enter, for your node-set name: "clusternodes" 

Next, enter your Kubernetes Cluster Name in the box that's appropriate:

Your cluster name is likely something like "ws01.k8s.local" for this workshop.





