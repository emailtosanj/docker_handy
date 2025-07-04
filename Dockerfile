FROM python:3.9-slim

#set the working directory
WORKDIR /app

#copies the requirements.txt in to the working directory
COPY ./requirements.txt .

RUN pip install -r requirements.txt

#copies all the app files in the working directory
COPY ./app /app

#container start command
CMD ['gunicorn', '--bind', '0.0.0.0:8000', 'app:server']

