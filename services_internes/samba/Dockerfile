FROM ubuntu:latest


RUN apt update -y && apt upgrade -y
RUN apt install samba -y
RUN apt install nano -y
RUN apt install iputils-ping -y
RUN apt install net-tools -y

RUN apt install samba -y
COPY smb.conf /etc/samba/smb.conf


EXPOSE 136:136
EXPOSE 445:445
#RUN RUNLEVEL=1 apt install mariadb-server -y


CMD ["sh", "-c" ," tail -F /dev/null"]

# installer smbclient : smbclient -U patson //<ip_serveur>/<fichier_partagé>

# Créer les utilisateurs et les ajouter à la db samba

# adduser patson
# pdedit -a patson 
# creer les dossiers