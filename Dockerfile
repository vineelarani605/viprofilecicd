# Use a base image
FROM python:3.9-slim-buster

# Set the working directory inside the container
WORKDIR /app

# Copy the project files to the working directory
COPY . .

# Expose any necessary ports
EXPOSE 8002

# Set the command to run your application
CMD ["python", "app.py"]
