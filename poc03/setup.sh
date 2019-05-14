#!/bin/bash
set +x
echo Waiting for initial setup ...
  while [ ! -f /usr/bin/screen ]
  do
    sleep 1
  done
chmod 755 /root/fetch-dash-token.sh
echo 'environment setup.  Have fun! '
