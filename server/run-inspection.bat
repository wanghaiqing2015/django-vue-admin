@echo off

echo *******************你可以访问下面的地址*********************
echo http://127.0.0.1:8000/admin
echo ************************************************************
 
start  http://127.0.0.1:8000/admin
 
C:\Python38\python.exe manage.py runserver 0.0.0.0:8000


pause
 
windows 需要注释掉uwsgi包，再进行安装包
C:\Python36\Scripts\pip.exe install -r requirements.txt
