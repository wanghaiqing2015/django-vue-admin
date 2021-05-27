@echo off
  
REM celery -A server worker -l debug -P eventlet

celery -A server worker -l debug -P solo
 
pause

python manage.py shell
>>> from apps.system.tasks import show
>>> show.delay()

>>> from server.celery import debug_task
>>> debug_task.delay()