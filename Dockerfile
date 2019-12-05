# Using python2.7
FROM python:2.7-slim

MAINTAINER Krishna "krishna.ubuntu@gmail.com"

WORKDIR /app

COPY . /app

# Install Flask and ipaddress
RUN pip install --trusted-host pypi.python.org Flask
RUN pip install --trusted-host pypi.python.org ipaddress

ENTRYPOINT [ "python" ]

# Run app.py when container launaches
CMD [ "app.py" ]
