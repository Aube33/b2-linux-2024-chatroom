FROM python:3

RUN pip install redis
RUN pip install websockets

RUN mkdir -p /app
COPY ./chat_server.py /app
WORKDIR /app

ENTRYPOINT ["python", "-u", "chat_server.py"]