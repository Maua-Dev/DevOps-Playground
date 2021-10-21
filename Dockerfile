FROM python:3.9.6-alpine

EXPOSE 8080

COPY ./src /app

COPY requirements.txt /app

VOLUME [ "/app" ]

WORKDIR /app

RUN apk update
RUN apk add git
RUN apk add python3-dev
RUN python3 -m venv venv
RUN ls
RUN ls venv/bin
RUN source venv/bin/activate
RUN pip install -r requirements.txt

CMD ["python", "-m", "src.main"]
