nohup python manage.py runserver 0.0.0.0:80 > run.log 2>&1 &
tail -F run.log