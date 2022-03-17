FROM centos:latest

#Bind9 et outils nécessaire
RUN apt update -y && apt upgrade -y 
RUN apt install bind9 bind9utils dnsutils net-tools -y

#Coput du fichier named.conf dans le dossier de config de bind
COPY named.conf /etc/bind/


EXPOSE 53/udp
EXPOSE 53/tcp