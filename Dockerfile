FROM python:3.8

ENV DockerHome /app/home
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
WORKDIR $DockerHome

COPY . .
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
RUN chmod +x ./entrypoint.sh

CMD ["./entrypoint.sh"]
