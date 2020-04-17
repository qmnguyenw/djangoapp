#! /bin/sh
python manage.py migrate
python manage.py runserver

gunicorn --bind=0.0.0.0 --timeout 600 <module>.wsgi
