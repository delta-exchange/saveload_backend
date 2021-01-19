#!/bin/bash
git pull
source venv/bin/activate
pip install -r requirements.txt
sudo supervisorctl reread
sudo supervisorctl update
sudo supervisorctl restart saveload_backend
