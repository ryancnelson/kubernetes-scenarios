#!/bin/bash
chmod 755 /root/fetch-dash-token.sh
set +x
echo Waiting for initial setup ...
  while [ ! -f /usr/bin/screen ]
  do
    sleep 1
  done
echo 'environment setup.  Have fun! '
