#!/bin/bash
ssh_id_dsa_key_file=~/.ssh/id_dsa
passphrase="ansible"
# Demarrage d'un agent ssh
eval $(ssh-agent)
expect <<EOF
spawn ssh-add ${ssh_id_dsa_key_file}
expect "Enter passphrase for ${ssh_id_dsa_key_file}:"
send "${passphrase}\n"
expect eof
exit
EOF
ansible-playbook -i inventory/hosts main.yml -vvvv 
