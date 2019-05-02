## Task

The command below will populate an index.html file with links to the rest of this tutorial.
`curl https://gist.githubusercontent.com/ryancnelson/cbb9a76e65930875d202a9d88d16b51c/raw/143c6bb1092a7607146e928a678611211cfb113f/gistfile1.txt > index.html `{{execute HOST1}}


This command will run a webserver to serve up this file.
`python -mSimpleHTTPServer 8001`{{execute HOST1}}


Render port 8001: https://[[HOST_SUBDOMAIN]]-8001-[[KATACODA_HOST]].environments.katacoda.com/links.html
