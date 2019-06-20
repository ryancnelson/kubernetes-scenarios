Now, let's create a node-set:

In the console, click the create-node-set button:

<img style="width:40%; height:auto;"src="http://nelson.dev/node-set-create.jpg" > button, and paste in your trust-bundle.


(after running this, if necessary, wait about a minute, then try the following again):
`ssh  -i ~/.ssh/scytale-workshop-key.rsa -l ${wsuser}  -p 2244 nelson.dev "cd sales-poc ; source ../.profile ; source .envrc ; make show-saas "   `{{execute HOST1}}

NOW: 
*copy the `---CERTIFICATE STUFF---` above * 
... then go to http://console.demo.scytale.io/v2 , and ask the instructors for your login credentials.




So, now you should have some:
`---CERTIFICATE STUFF---` ready to copy and paste.

That's your "trust bundle".


NOW: 
*copy the `---CERTIFICATE STUFF---` above * 
... then go to http://console.demo.scytale.io/v2 , and ask the instructors for your login credentials.

once you're logged in, click the <img style="width:40%; height:auto;"src="http://nelson.dev/authenticate-button.jpg" > button, and paste in your trust-bundle.

Enter a descriptive name, and submit.

Wait a minute, and reload, and you should see your simulated "on prem" Active Directory server be disovered in the console.

It should look like this:

<img style="width:40%; height:auto;"src="http://nelson.dev/id_provider_discovered.jpg" >



