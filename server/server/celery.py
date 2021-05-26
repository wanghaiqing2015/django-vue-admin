import os

from celery import Celery

# set the default Django settings module for the 'celery' program.
os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'server.settings_dev')

app = Celery('server')

# Using a string here means the worker doesn't have to serialize
# the configuration object to child processes.
# - namespace='CELERY' means all celery-related configuration keys
#   should have a `CELERY_` prefix.
app.config_from_object('django.conf:settings')

# Load task modules from all registered Django app configs.
from django.conf import settings
app.autodiscover_tasks(settings.INSTALLED_APPS)

# 解决时区问题,定时任务启动就循环输出？？？？？
from django.utils import timezone
app.now = timezone.now


@app.task(bind=True)
def debug_task(self):
    print('debug_task ok!!!')