@echo off
  
celery -A server worker -l debug -P eventlet
 
pause

python manage.py shell
>>> from apps.system.tasks import show
>>> show.delay()

>>> from server.celery import debug_task
>>> debug_task.delay()