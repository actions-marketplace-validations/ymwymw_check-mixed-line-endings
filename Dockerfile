FROM ubuntu:latest as check-mixed-line-endings

WORKDIR /app
COPY entrypoint.sh /

RUN  apt-get update && apt-get install -y  file

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/bin/bash", "/entrypoint.sh"]
