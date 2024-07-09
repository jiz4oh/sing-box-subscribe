FROM python:3.12-slim

WORKDIR /app
COPY ./requirements.txt /app/requirements.txt
RUN pip install -r requirements.txt
COPY . /app/
COPY ./providers.example.json /app/providers.json

ENTRYPOINT ["python", "main.py"]
