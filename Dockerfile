FROM python:3
RUN git clone https://github.com/Pivotsecurity/proxy2.git
RUN cd proxy2
WORKDIR proxy2
RUN openssl genrsa -out ca.key 2048
RUN openssl req -new -x509 -days 3650 -key ca.key -out ca.crt -subj "/CN=proxy2 CA"
RUN openssl genrsa -out cert.key 2048
RUN mkdir certs/
CMD [ "python3", "./proxy2.py" ]
