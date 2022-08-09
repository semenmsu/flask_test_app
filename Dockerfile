FROM python:3.9-slim

#ENV NEXUS_REPO http://localhost:8081/repository/pypi-all/
#ENV NEXUS_USER docker
#ENV NEXUS_PASWORD docker

#RUN "echo -e \"[distutils]\r\nindex-servers =\r\n   nexus\r\n \r\n[nexus]\r\nrepository: $NEXUS_REPO\r\nusername: $NEXUS_USER\r\npassword: $NEXUS_PASWORD\" > ~/.pypirc"
#RUN echo "[distutils]\r\nindex-servers =\r\n   nexus\r\n \r\n[nexus]\r\nrepository: $NEXUS_REPO\r\nusername: $NEXUS_USER\r\npassword: $NEXUS_PASWORD" > ~/.pypirc
#[global]\r\nindex = http://localhost:8081/repository/pypi-all\r\nindex-url = http://localhost:8081/repository/pypi-all/simple\r\n\r\n [install]\r\ntrusted-host = localhost:8081"

#[install]
#trusted-host = localhost:8081
#RUN echo "[global]\r\nindex-servers =\r\n   nexus\r\n \r\n[nexus]\r\nrepository: $NEXUS_REPO\r\nusername: $NEXUS_USER\r\npassword: $NEXUS_PASWORD" > /etc/pip.conf
#RUN echo "[global]\r\nindex = http://localhost:8081/repository/pypi-all\r\nindex-url = http://localhost:8081/repository/pypi-all/simple\r\n\r\n[install]\r\ntrusted-host = localhost:8081" > /etc/pip.conf
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

WORKDIR /usr/app
COPY src src
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
WORKDIR /usr/app
STOPSIGNAL SIGINT
