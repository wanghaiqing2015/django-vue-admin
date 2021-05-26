@echo off

celery -A server worker -P eventlet -l debug  
 
pause

python manage.py shell
>>> from apps.system.tasks import show
>>> show.delay()