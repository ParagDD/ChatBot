# Use the official Python 3.11 image as the base image
FROM python:3.11.0b3-slim-buster

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app/

# Install any needed packages specified in requirements.txt
RUN pip install -r requirements.txt

# Expose a port if your application listens on one
# EXPOSE 8080

# Define environment variable(s) if needed
# ENV MY_VARIABLE=value

# Run the application using CMD which is the command to start your application
CMD ["python3", "app.py"]

