#!/bin/sh

set -e

if [ -d /opt/ceh ]; then
  echo Ceh already exists
  exit 1
fi

sudo mkdir /opt/ceh /nix
sudo chown np. /opt/ceh /nix
chmod 0700 /opt/ceh /nix
cd /opt/ceh
git clone git://github.com/nilcons/ceh.git .
ln -s /home/np home
exec /opt/ceh/scripts/ceh-init.sh
