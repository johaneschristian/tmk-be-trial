#!/bin/bash
python manage.py migrate
gunicorn communalspace.wsgi:application