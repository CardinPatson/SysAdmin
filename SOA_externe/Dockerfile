FROM ubuntu:latest

#Bind9 et outils nécessaire

RUN apt update && apt upgrade -y
RUN apt install nano -y
RUN apt install bind9 bind9utils dnsutils net-tools -y 
RUN apt install iputils-ping -y

#Coput du fichier named.conf dans le dossier de config de bind
COPY named.conf /etc/bind/named.conf
COPY db.m1-3.ephec-ti.be /etc/bind/db.m1-3.ephec-ti.be

WORKDIR /etc/bind

# creer le dossier pour les log et mettre l'utilisateur bind
EXPOSE 53/udp
EXPOSE 53/tcp

CMD ["named" , "-c", "/etc/bind/named.conf" , "-g"]
# CMD tail -f /dev/null
#creer le conteneur -- docker run -d --name=nom_conteneur --restart=always --publish 53:53/udp --publish 53:53/tcp dns_ext