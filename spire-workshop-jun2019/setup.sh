set +x
echo Waiting for initial setup ...
  while [ ! -f /usr/bin/screen ]
  do
    sleep 1
  done
chmod 777 /var/run/screen

git clone https://github.com/ryancnelson/spiffe-example
cd spiffe-example/dupin
make

export SPIRE_GOOPTS=""
export DEBUG=""
echo 'environment setup.  Have fun! '

