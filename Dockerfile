FROM ubuntu:14.04
MAINTAINER Francois Gaudin <francois@presencelearning.com>

RUN \
  apt-get update && apt-get install -y build-essential python-dev python-pip \
  && pip install gunicorn

RUN mkdir -p /opt/app
WORKDIR /opt/app

EXPOSE 8000

ENTRYPOINT ["/usr/local/bin/gunicorn", "-b", ":8000"]