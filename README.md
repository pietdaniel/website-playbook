# Ansible Playbook for my website

### How to Run

#### Run entire playbook

```bash
ansible-playbook -i hosts site.yml --ask-become-pass -vvvvv
```

or:

```bash
./run.sh
```

The password in in the password manager.

### Getting there slowly

Nginx role was hijacked from https://github.com/jdauphant/ansible-role-nginx

static role just copies github/piet.us into /usr/share/nginx/html i think (maybe var www)

need to set up chtr and notes
 - clone repo
 - create user
 - consider setting up js correctly
 - run script (supervisor?)

### Setting up new digital ocean
 - run pietdaniel/do-server-setup-playbook


# Thu Apr  6 15:57:08 2023 - LetsEncrypt Key Rotation

```
sudo openssl genrsa -out /etc/letsencrypt/keys/piet.us_new.key 2048
```

this is bad, doing certbot

```
sudo apt-get update
sudo apt-get install certbot python3-certbot-nginx
```

```
sudo certbot --nginx -d piet.us
sudo nginx -t
sudo systemctl reload nginx
```
