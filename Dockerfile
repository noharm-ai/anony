FROM tiangolo/uwsgi-nginx-flask:python3.8

RUN apt-get update

COPY requirements.txt /app

RUN pip install --upgrade pip
RUN pip install -r ./requirements.txt

COPY ./app /app