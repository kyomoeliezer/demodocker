FROM python:3.10.5-slim-buster
RUN mkdir /code
WORKDIR /code
COPY . /code
# uwsgi setup
RUN apk add python3-dev build-base linux-headers pcre-dev
RUN pip install uwsgi
RUN pip install -r requirementdocker.txt

CMD ["uwsgi", "--ini", "/code/middleware.uwsgi.ini"]