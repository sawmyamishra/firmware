FROM ubuntu:18.04

ENV TZ=Asia

ADD WNAP320 Firmware Version 2.0.3.zip ./.WNAP320 Firmware Version 2.0.3.zip

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get update && \
    apt-get install binwalk -y && \
    apt-get install postgresql -y && \
    apt-get install python2.7 -y && \
    apt-get install python-pip -y && \
    apt-get install zip -y && \
    apt-get install git -y && \
    apt-get install apache2 -y && \
    apt-get install nginx -y && \
    apt-get clean


EXPOSE 80

CMD [ "nginx" , "-g", "daemon off;" ]
