FROM python:latest
MAINTAINER toughiq@gmail.com

RUN apt-get update && apt-get upgrade -y \ 
    && pip install http-prompt \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ENTRYPOINT ["http-prompt"]
CMD ["http-prompt"]
