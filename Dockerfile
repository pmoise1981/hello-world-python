# Use the official Python image from Docker Hub
FROM python:3.12-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the app.py file into the container
COPY app.py .

# Command to run the Python script
CMD ["python", "app.py"]

