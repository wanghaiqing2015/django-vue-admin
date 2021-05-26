@echo off

celery -A server beat -l debug
 
pause

采用下面命令，是无效的
C:\Python36\python.exe  manage.py  celerybeat --settings=settings