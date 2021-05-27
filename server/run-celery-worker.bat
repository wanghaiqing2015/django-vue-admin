@echo off

REM 不报错
REM celery -A server worker -l debug  

REM 不报错
celery -A server worker -l debug -P gevent

REM 报错
REM celery -A server worker -l debug -P eventlet

REM 不报错
REM celery -A server worker -l debug -P solo
 
pause

python manage.py shell
>>> from apps.system.tasks import show
>>> show.delay()

>>> from server.celery import debug_task
>>> debug_task.delay()