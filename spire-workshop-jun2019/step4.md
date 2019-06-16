## Task

SPIRE Server and SPIRE Agent are now running and ready to attest our workloads and generate the corresponding SVIDs. The environment is already provisioned with sample configuration files for the NGINX front-end and the NGINX blog servers. The nginx-blog terminal can be used to launch the NGINX acting as a blog:

Let's start the "blog" webserver in the middle-left pane:

focus pane 2:
`:focus top
:focus down
:focus left
./nginx -c /usr/local/nginx/nginx_blog.conf`{{execute HOST1}}


...and then start the front-end proxy in the middle-right pane:

focus pane 3:
`:focus top
:focus down
:focus right
./nginx -c /usr/local/nginx/nginx_fe.conf`{{execute HOST1}}



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



