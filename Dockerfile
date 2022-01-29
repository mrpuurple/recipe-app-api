FROM python:3.7-alpine3.15
LABEL maintainer mrpuurple

# Recommended when running python in docker containers
ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt

RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D user
USER user
