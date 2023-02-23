#!/bin/bash
apt update -y
apt install python3-pip -y
apt install gunicorn -y
apt install supervisor -y
git clone https://github.com/zaireali649/python_cicd /home/ubuntu/python_cicd
pip3 install -r /home/ubuntu/python_cicd/app/requirements.txt
mkdir /etc/supervisor
mkdir /etc/supervisor/conf.d
cp /home/ubuntu/python_cicd/configs/flask_app.conf /etc/supervisor/conf.d/flask_app.conf
mkdir /var/log/flask_app
touch /var/log/flask_app/flask_app.out.log
touch /var/log/flask_app/flask_app.err.log
supervisorctl reload