Now, that we have our nodes defined, (so we know what agents we can trust), let's define some workloads:

click the "register workload" button
and enter:
`webapp1` after the "...ks.local/", in the menu.

... Lower the "TTL" (time to live) down to 30 seconds.

For "selector type", pick "service account" (this is your kubernetes service account), and then click on the "+" to the right.

Enter "webapp1" in the service account field, then click "register"

-----

Now, repeat that process, but for service account "webapp2".



