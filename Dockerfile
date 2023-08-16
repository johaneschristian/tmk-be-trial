FROM python:3.8

ENV DockerHome /app/home
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
WORKDIR $DockerHome

RUN apt update -y && \
    apt install gunicorn3 -y

COPY . .
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

CMD ["./entrypoint.sh"]
