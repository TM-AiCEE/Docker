# Use an official Python runtime as a parent image
FROM python:3.6

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
ADD ./AiCEE /app

# Install any needed packages specified in requirements.txt
#RUN pip install --trusted-host pypi.python.org -r requirements.txt
RUN pip install pipenv
RUN pipenv --three
RUN pip install websocket
RUN pip install websocket-client

# Define environment variable
ENV NAME AiCEE-Bot

# Run run.py when the container launches
#CMD ["python", "run.py"]
