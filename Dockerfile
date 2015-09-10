FROM ubuntu:14.04
#MAINTAINER David Sanders <dsanders_can@outlook.com>
RUN mkdir /phonews
RUN mkdir /phonews/static
RUN cd /phonews
COPY phoneWS.py /phonews/
COPY setupFlask.sh /phonews/
COPY testWS.sh /phonews/
COPY README /phonews/
COPY index.html /phonews/static/
WORKDIR /phonews/
RUN apt-get update && apt-get install -y python
RUN apt-get install -y python-pip
RUN pip install virtualenv
RUN virtualenv flask
RUN apt-get install -y curl
RUN flask/bin/pip install flask
RUN flask/bin/pip install flask-login
RUN flask/bin/pip install flask-openid
RUN flask/bin/pip install flask-mail
RUN flask/bin/pip install flask-sqlalchemy
RUN flask/bin/pip install sqlalchemy-migrate
RUN flask/bin/pip install flask-whooshalchemy
RUN flask/bin/pip install flask-wtf
RUN flask/bin/pip install flask-babel
RUN flask/bin/pip install guess_language
RUN flask/bin/pip install flipflop
RUN flask/bin/pip install coverage
