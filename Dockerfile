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
RUN apt-get update && apt-get install -y python3-minimal
RUN apt-get install -y openssl
RUN apt-get install -y curl
RUN apt-get install -y nginx
RUN apt-get install -y python3-pip
RUN pip3 install virtualenv
RUN virtualenv flask
RUN flask/bin/pip install flask
RUN flask/bin/pip install flask-login
