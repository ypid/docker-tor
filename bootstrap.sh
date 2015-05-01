#!/bin/sh

if [ -d "/root/.tor" ]; then
    echo "Clean up legacy stuff."
    mv /root/.tor/* /var/lib/tor
    rmdir "/root/.tor"
fi

chown root:root /var/lib/tor -R
chmod a=,u=rwX /var/lib/tor -R

/usr/bin/tor -f /etc/torrc
