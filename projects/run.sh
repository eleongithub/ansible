#!/bin/bash
ssh_auth_file=ssh_authentification.sh

source $ssh_auth_file

echo "-- Ansible version --"

ansible --version

echo "---------------------"

# TODO : Get this variable from Jenkins input password  
VAULT_PASSWORD="test"
echo $VAULT_PASSWORD > vault_pass.txt
ansible-playbook --vault-password-file vault_pass.txt -i inventory/dev/hosts.yml main.yml -vvv -e "env=dev"
rm vault_pass.txt