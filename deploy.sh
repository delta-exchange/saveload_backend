#!/bin/bash
git pull
source venv/bin/activate
sudo pip3 install -r requirements.txt
sudo supervisorctl reread
sudo supervisorctl update
sudo supervisorctl restart saveload_backend
