set +x
echo Waiting for initial setup ...
  while [ ! -f /usr/bin/screen ]
  do
    sleep 1
  done
chmod 777 /var/run/screen

echo 'environment setup.  Have fun! '

