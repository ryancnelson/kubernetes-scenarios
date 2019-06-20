set +x
echo Waiting for initial setup ...
  while [ ! -f /usr/bin/screen ]
  do
    sleep 1
  done
chmod 777 /var/run/screen

# git clone https://github.com/ryancnelson/spiffe-example
git clone https://github.com/ryancnelson/spiffe-example-workshop
cd spiffe-example-workshop/dupin
make

export SPIRE_GOOPTS=""
export DEBUG=""
chmod 777 /var/run/screen
echo 'environment setup.  Have fun! '

