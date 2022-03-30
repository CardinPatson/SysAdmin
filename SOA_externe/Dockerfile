FROM ubuntu:latest

#Bind9 et outils nécessaire
RUN apt update && apt upgrade -y
RUN apt install bind9 bind9utils dnsutils net-tools -y 
RUN apt install iputils-ping -y

#Nano pour une eventuelle inspection à l'intérieur du conteneur
RUN apt install nano -y

#COPIE DES FICHIERS DE CONFIG DANS LE CONTENEUR
COPY named.conf /etc/bind/named.conf
COPY db.m1-3.ephec-ti.be /etc/bind/db.m1-3.ephec-ti.be

#CREATION DU FICHIER DE LOG
RUN mkdir /var/log/named
RUN touch /var/log/named/misc.log /var/log/named/query.log
RUN chown -R root:bind /var/log/named


WORKDIR /etc/bind

#EXPOSER LES PORT 53 TCP ET UDP
EXPOSE 53/udp
EXPOSE 53/tcp

CMD ["named" , "-c", "/etc/bind/named.conf" , "-g"]


