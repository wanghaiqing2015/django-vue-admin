@echo off

echo *******************����Է�������ĵ�ַ*********************
echo http://127.0.0.1:8000/admin
echo ************************************************************
 
start  http://127.0.0.1:8000/admin
 
C:\Python38\python.exe manage.py runserver 0.0.0.0:8000


pause
 
windows ��Ҫע�͵�uwsgi�����ٽ��а�װ��
C:\Python36\Scripts\pip.exe install -r requirements.txt
