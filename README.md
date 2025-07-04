# docker_handy
Docker Handy


my_web_app/
├── app.py
└── requirements.txt
app.py is your main application file.

requirements.txt lists the Python libraries your app needs (like Flask and gunicorn).

Your task is to write a complete Dockerfile that will:

Start from the official python:3.9-slim base image.

Set a working directory inside the image to /app.

Copy the requirements.txt file into the image.

Install the dependencies from requirements.txt.

Copy the rest of your application code (just app.py) into the image.

Specify the command to run the app using gunicorn. The command should be: gunicorn --bind 0.0.0.0:8000 app:server.

