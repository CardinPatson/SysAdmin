FROM ubuntu:latest


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


WORKDIR /etc/bind/
CMD ["named", "-c", "/etc/bind/named.conf", "-g"]
