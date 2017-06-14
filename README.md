# Ansible Playbook for my website

### How to Run

#### Run entire playbook
ansible-playbook -i hosts site.yml --ask-become-pass -vvvvv

### Getting there slowly

Nginx role was hijacked from https://github.com/jdauphant/ansible-role-nginx

static role just copies github/piet.us into /usr/share/nginx/html i think (maybe var www)

need to set up chtr and notes
 - clone repo
 - create user
 - consider setting up js correctly
 - run script (supervisor?)

### Setting up new digital ocean

- Spin up droplet
- SSH as root
- adduser
- enable password auth
- restart ssh
- copy id
- disable password auth
- restart ssh

- make remote_user site.yml remote user is setup correctly


