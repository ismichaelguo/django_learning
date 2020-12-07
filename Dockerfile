FROM python:3.7-alpine
MAINTAINER Michael

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip3 install -r /requirements.txt

RUN mkdir /app
# witch to default,
WORKDIR /app
# copy to docker image
COPY ./app /app

#RUN adduser -D user
#
#RUN chown -R user:user app/
#
#USER user
