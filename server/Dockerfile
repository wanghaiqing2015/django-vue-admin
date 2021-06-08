FROM python:3.8-slim
WORKDIR /code
ADD . .
RUN sed -i s/deb.debian.org/mirrors.163.com/g /etc/apt/sources.list
RUN sed -i s/security.debian.org/mirrors.163.com/g /etc/apt/sources.list
RUN apt-get update && apt-get install -y gcc libpq-dev &&\
    apt-get clean && rm -rf /var/lib/apt/lists/* &&\
    pip install supervisor &&\
    pip install -r ./requirements.txt
EXPOSE 8000
ENTRYPOINT ["/bin/bash","-C","/code/start.sh"]