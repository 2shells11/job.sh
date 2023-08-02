#!/bin/bash
nohup python3 /home/vboxuser/Downloads/flask_app-main/app.py > log.txt 2>&1 & 
cd "/home/vboxuser/Downloads/test_app/"
pytest > test_log.txt
if [ $(whoami) != "root" ]
then
    su -c 'cp test_log.txt /home/sambauser/shared_folder'
else
    'cp test_log.txt /home/sambauser/shared_folder'
fi
