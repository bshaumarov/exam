FROM python:3.7-slim

RUN mkdir /app

COPY . /app

COPY reqs.txt /app

RUN pip3 install -r /app/reqs.txt --no-cache-dir

WORKDIR /app

EXPOSE 5000

CMD [ "flask", "run","--host","0.0.0.0","--port","5000"]

