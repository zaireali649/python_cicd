#!/bin/bash
apt update
apt install python3-pip
apt install gunicorn
git clone https://github.com/zaireali649/python_cicd /home/ubuntu/python_cicd
pip3 install -r python_cicd/app/requirements.txt
cp python_cicd/configs/flask_app.conf /etc/supervisor/conf.d/flask_app.conf
supervisorctl reload