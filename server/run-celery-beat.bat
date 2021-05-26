@echo off

celery -A server beat -l debug
 
pause
