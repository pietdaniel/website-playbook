#!/bin/bash

BECOME_PASS=$(security find-generic-password -w -s 'civil-digital-ocean' -a piet)

ansible-playbook -i hosts site.yml --extra-vars "ansible_become_pass=$BECOME_PASS"
