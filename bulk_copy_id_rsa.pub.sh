#!/bin/bash
#This script copies in bulk way a public key
#to multiple remote servers.
#
#Copy a file call servers_list with multiple
#ip's one per line to /tmp folder and then
#execute de script:
#
# source bulk_copy_id_rsa.pub.sh
#
#You will be asked for the password on each 
#server for the user who is running the script

for ip in `cat /tmp/servers_list`; do
    ssh-copy-id -i ~/.ssh/id_rsa.pub $ip
done
