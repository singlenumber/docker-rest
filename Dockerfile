FROM ubuntu:trusty
MAINTAINER Xiaomeng Yi "yixiaomeng@gmail.com"

RUN apt-get -y update
RUN apt-get -y install vim wget python-pip curl
RUN apt-get -y install libpq-dev python-dev

RUN pip install falcon tornado flask
RUN pip install gunicorn # For falcon

EXPOSE 8888
# Heroku toolbeit
# RUN wget -O- https://toolbelt.heroku.com/install-ubuntu.sh | sh