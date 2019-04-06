# this is an official Python runtime, used as the parent image
FROM python:3.7.2-slim

# set the working directory in the container to /app
WORKDIR /app

# add the current directory to the container as /app
ADD . /app

# execute everyone's favorite pip command, pip install -r
RUN pip3 install --trusted-host pypi.python.org -r requirements.txt

# unblock port 80 for the Bottle app to run on
EXPOSE 8080

# execute the Flask app
CMD ["python3", "hola-api.py"]
