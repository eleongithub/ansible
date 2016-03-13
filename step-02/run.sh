#!/bin/bash
ansible-playbook -i inventory/hosts main.yml --ask-su-pass -vvvv
