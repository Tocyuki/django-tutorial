# image
FROM python:3

# set env
ENV PYTHONUNBUFFERED 1

# install modules
RUN mkdir /code
WORKDIR /code
ADD requirements.txt /code/
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
ADD . /code/
