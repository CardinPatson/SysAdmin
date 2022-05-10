FROM ubuntu:latest

RUN apt-get update && apt-get upgrade -y
RUN apt-get install nano -y
RUN apt-get install bind9 bind9utils dnsutils net-tools -y
RUN apt-get install iputils-ping -y


WORKDIR /etc/bind

COPY named.conf /etc/bind/named.conf

RUN mkdir /var/log/named
RUN touch /var/log/named/misc.log /var/log/named/query.log
RUN chown -R root:bind /var/log/named

CMD ["named" , "-c" , "/etc/bind/named.conf" , "-g"]

#CMD tail -f /dev/null