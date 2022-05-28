FROM python:0.7-alpine
MAINTAINER deamaun

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt/requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /eia
WORKDIR /eia
COPY ./eia /eia

RUN adduser -D user
USER user
