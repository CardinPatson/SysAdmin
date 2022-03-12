FROM ubuntu:latest


RUN apt-get update -y && apt-get upgrade
RUN apt install -y bind9 bind9utils dnsutils
RUN apt install -y nano
RUN apt install -y iputils-ping
RUN apt install -y net-tools

WORKDIR /etc/bind

CMD tail -f /dev/null