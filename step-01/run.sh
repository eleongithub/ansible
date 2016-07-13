#!/bin/bash
ssh_auth_file=~/ansible/ssh_authentification.sh

source $ssh_auth_file

echo "-- Ansible version --"

ansible --version

echo "---------------------"

ansible-playbook -i hosts.yml main.yml -vvvv