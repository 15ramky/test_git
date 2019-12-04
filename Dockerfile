# Using python2.7
FROM python:2.7-slim

MAINTAINER Krishna "krishna.ubuntu@gmail.com"

WORKDIR /app

COPY . /app

# Install any needed packages specified in the requirements.txt
RUN pip install --trusted-host pypi.python.org -r requirements.txt

ENTRYPOINT [ "python" ]

# Run app.py when container launaches
CMD [ "app.py" ]
