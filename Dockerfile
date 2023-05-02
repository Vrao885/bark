# Use an official Python runtime as a parent image
FROM python:3.9-slim-buster

# Set the working directory to /app
WORKDIR /app

# Copy the requirements.txt file into the container at /app
COPY requirements.txt /app

# Install any needed packages specified in requirements.txt
RUN pip install --trusted-host pypi.python.org -r requirements.txt

# Copy the rest of the application code into the container at /app
COPY . /app

# Expose port 8000 for the FastAPI app
EXPOSE 8000

# Run the command to start the FastAPI app
CMD ["uvicorn", "main:app", "--host", "127.0.0.1", "--port", "8000"]
