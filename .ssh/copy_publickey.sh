#!/bin/bash
for ip in `cat servers_list`; do
    echo "Copying public key to IP server" $ip
    ssh-copy-id -i ~/.ssh/id_rsa.pub $ip
done
