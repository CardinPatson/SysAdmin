FROM ubuntu:latest

#Bind9 et outils nécessaire
RUN apt update -y && apt upgrade -y 
RUN apt install -y nano 
RUN apt install -y bind9 bind9utils dnsutils net-tools 
RUN apt install -y iputils-ping

#Coput du fichier named.conf dans le dossier de config de bind
COPY named.conf /etc/bind/
COPY db.m1-3.ephec-ti.be /etc/bind
COPY db.176 /etc/bind

WORKDIR /etc/bind

# creer le dossier pour les log et mettre l'utilisateur bind
RUN mkdir /var/log/named
RUN touch  /var/log/named/misc.log /var/log/named/query.log
RUN chown -R root:bind /var/log/named
RUN chown root:bind /etc/bind/rndc.key 

EXPOSE 53/udp
EXPOSE 53/tcp

CMD tail -f /dev/null