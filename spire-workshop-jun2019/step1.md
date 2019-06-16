## Task

*Start the Demo, running in GNU-Screen*
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


What's my other hostname?
`hostname`{{execute HOST2}}

what's the current date?
`date`{{execute HOST1}}

