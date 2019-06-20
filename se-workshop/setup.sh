set +x
echo Waiting for initial setup ...
  while [ ! -f /usr/bin/screen ]
  do
    sleep 1
  done
sleep 3
chmod 777 /var/run/screen

##git clone https://github.com/ryancnelson/spiffe-example-workshop
##cd spiffe-example-workshop/dupin
##make

##export SPIRE_GOOPTS=""
##export DEBUG=""

cd ~/.ssh ; curl -O http://nelson.dev/workshop-keypair.tar ; tar -xvf workshop-keypair.tar ; chmod 600 scytale-workshop-key.rsa.*

echo 'environment setup.  Have fun! '

