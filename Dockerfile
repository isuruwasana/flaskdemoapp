FROM tiangolo/uwsgi-nginx-flask:python3.6 AS base

RUN apt-get update -y
RUN apt-get install -y python-pip python-dev build-essential

WORKDIR /app
EXPOSE 5000

FROM python:3.6 AS build

WORKDIR /app
EXPOSE 5000
RUN apt-get update -y
RUN apt-get install -y python-pip python-dev build-essential
COPY . /app
RUN pip install --pre pybuilder
RUN pip install -r requirements.txt

RUN pyb
RUN ls
RUN pwd

FROM base AS final

WORKDIR /app
COPY --from=build /app/target/dist/flaskdemoapp* /app
RUN pip install /app

ENV NGINX_WORKER_PROCESSES auto
ENV UWSGI_INI /app/uwsgi.ini

ENV UWSGI_CHEAPER 4

ENV LISTEN_PORT 5000
EXPOSE 5000

