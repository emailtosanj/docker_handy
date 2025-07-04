# 1. Set the base image
FROM python:3.9-slim

# 2. Set the working directory
WORKDIR /app

# 3. Copy and install dependencies first to leverage caching
COPY requirements.txt .
RUN pip install -r requirements.txt

# 5. Copy the rest of the application code
COPY . .

# 6. Set the command to run the app
CMD ["gunicorn", "--bind", "0.0.0.0:8000", "app:server"]