#!/bin/bash
ssh_auth_file=ssh_authentification.sh
source $ssh_auth_file
echo "-- Ansible version --"
ansible --version
echo "---------------------"
# TODO : VAULT_PASSWORD & env variables will be get from Jenkins input data  
VAULT_PASSWORD="test"
echo $VAULT_PASSWORD > vault_pass.txt
ansible-playbook --vault-password-file vault_pass.txt -i inventory/dev/hosts.yml main_prerequis.yml -vvv -e "env=dev"
rm vault_pass.txt