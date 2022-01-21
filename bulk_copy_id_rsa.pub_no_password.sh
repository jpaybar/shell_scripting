#!/bin/bash
#This script copies in bulk way a public key
#to multiple remote servers without ask for
#user and password.
#
#It's needed install sshpass package to pass
#the password to the ssh script.
#
#Replace yourpassword and youruser with your
#right user and password.
#
#Copy a file call servers_list with multiple
#ip's one per line to /tmp folder and then
#execute de script:
#
# source bulk_copy_id_rsa.pub_no_password.sh

for ip in `cat /tmp/servers_list`; do
    sshpass -p "yourpassword" ssh-copy-id -o StrictHostKeyChecking=no -i ~/.ssh/id_rsa.pub youruser@$ip
done
