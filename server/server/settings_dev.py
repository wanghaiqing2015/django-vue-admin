from .settings import *
DEBUG = True
DATABASES = {
    # 'default': {
        # 'ENGINE': 'django.db.backends.postgresql_psycopg2',
        # 'NAME': 'test',
        # 'USER':'postgres',
        # 'PASSWORD':'123456',
        # 'HOST':'192.168.10.110',
        # 'PORT':5432
    # },
    
    'default': {
        'ENGINE': 'django.db.backends.mysql',
        'NAME': 'inspect',
        'USER': 'root',
        'PASSWORD': 'Star*2020',
        'HOST': 'www.wanghaiqing2020.com',
        'PORT': '3306',
    },
 
     # 'default': {
         # 'ENGINE': 'django.db.backends.sqlite3',
         # 'NAME': os.path.join(BASE_DIR, 'db.sqlite3'),
     # }
}

# celery配置
CELERY_BEAT_SCHEDULER = 'django_celery_beat.schedulers:DatabaseScheduler'