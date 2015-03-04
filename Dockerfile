FROM ablerman/base
MAINTAINER Francois Gaudin <francois@presencelearning.com>

RUN \
  apt-get update && apt-get install -y build-essential python-dev python-pip \
  && pip install gunicorn

COPY supervisord.conf /etc/supervisor/conf.d/gunicorn.conf

RUN mkdir -p /opt/app
WORKDIR /opt/app

EXPOSE 8000
