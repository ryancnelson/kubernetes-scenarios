#!/bin/bash
set +x
echo Waiting for initial setup ...
  while [ ! -f /usr/bin/screen ]
  do
    sleep 1
  done
echo 'environment setup.  Have fun! '
