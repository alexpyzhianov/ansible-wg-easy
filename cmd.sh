#!/bin/bash

ansible-playbook ./main.yml \
--become-password-file=become_pass \
-i hosts.ini \
-u <username> \
--tags setup,docker,wg
