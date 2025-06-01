# Use official Python slim image
FROM python:3.8-slim-buster

# Set working directory inside the container
WORKDIR /app

# Copy requirements.txt and install dependencies
COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy all code to working directory
COPY . .

# Command to run your bot
CMD ["python3", "main.py"]
Expose 3306
