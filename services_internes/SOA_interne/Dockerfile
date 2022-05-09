FROM ubuntu:latest

<<<<<<< HEAD

RUN apt-get update -y && apt-get upgrade -y
RUN apt install -y bind9 dnsutils
RUN apt install -y nano
RUN apt-get install -y mutt
RUN apt-get install -y lynx
RUN apt install -y iputils-ping
RUN apt install -y net-tools

#Accorder les permissions en exécution de
RUN chown bind:bind /etc/bind/rndc.key
RUN chmod 755 /etc/rndc.key

#Ouvrir le port 53 pour la transmission tcp/udp
#démarrer le conteneur sur le port
#docker run -dit -p 53:53 -p 53:53/udp --name bind bind:latest   
EXPOSE 53/UDP
EXPOSE 53/TCP
=======
RUN apt-get update && apt-get upgrade -y
RUN apt install bind9 bind9utils net-tools dnsutils -y
RUN apt-get install -y nano
RUN apt install iputils-ping -y
>>>>>>> 3db8daaae07e2c19e01d1850739103cb98c0442c


WORKDIR /etc/bind

COPY named.conf /etc/bind/named.conf
COPY db.intranet.woody /etc/bind/db.intranet.woody


CMD ["named", "-c", "/etc/bind/named.conf"]