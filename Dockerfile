# Use Python 3.11.7 base image
FROM python:3.11-slim-buster

# Set the working directory
WORKDIR /app

# Copy requirements and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application code
COPY . .

# Copy the templates folder
COPY templates /app/templates

# Expose port 5000
EXPOSE 5000

# Run the Flask application
CMD ["python","app.py"]
