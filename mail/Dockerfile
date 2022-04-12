FROM ubuntu:latest
RUN apt update -y
RUN apt upgrade -y

#UTILITIES
#NE PAS OUBLIER DE SPECIFIER MAIL DANS LE FICHIER /etc/hostname(l'enregistrement MX)
#NE PAS OUBLIER DE SPECIFIER 172.96.231.209 mail.m1-3.ephec-ti.be mail DANS LE FICHIER /etc/hosts
#PEUT ETRE FAIT AVEC LE DOCKER COMPOSE YML

RUN apt install nano mutt telnet mailutils net-tools -y
#INSTALL SERVER MYSQL
# RUN apt install mysql-server -y

# #CONFIGURE DATABASE OF MAIL AND USER

# #CONFIGURE SSL CERTIFICATE
# RUN openssl req -newkey rsa:2048 -nodes -keyout /etc/ssl/private/certificatemail.key -x509 -days 365 -out /etc/ssl/certs/certificatemail.crt -subj "/C=BE/ST=Braban/L=Louvain-La-Neuve/O=EPHEC/OU=IT/CN=mail.m1-3.ephec-ti.be"
# RUN apt update
# RUN apt install spamassassin spamc

# #CONFIGURE DOVECOT

# #1.INSTALL
# RUN apt install dovecot-imapd dovecot-pop3d dovecot-core -y
# RUN apt install dovecot-mysql
# #RUN apt install 

# #2. COPIE DES FICHIERS
# RUN mkdir /var/log/dovecot.log
# RUN dovecot/dovecot.conf /etc/dovecot/dovecot.conf
# RUN dovecot/dovecot-sql.conf.ext /etc/dovecot/dovecot-sql.conf.ext
# RUN dovecot/dovecot-dict-sql.conf.ext /etc/dovecot/dovecot-dict-sql.conf.ext

# RUN dovecot/conf.d/10-mail.conf /etc/dovecot/conf.d/10-mail.conf
# RUN dovecot/conf.d/10-master.conf /etc/dovecot/conf.d/10.master.conf 
# RUN dovecot/conf.d/10-auth.conf /etc/dovecot/conf.d/10-auth.conf
# RUN dovecot/conf.d/10-ssl.conf /etc/dovecot/conf.d/10-ssl.conf
# RUN dovecot/conf.d/10-logging.conf /etc/dovecot/conf.d/10-logging.conf

# #CONFIGURE POSTFIX 

# #1.INSTALL 
# RUN apt install postfix postfix-mysql
# COPY postfix/main.cf /etc/postfix/main.cf
# COPY postfix/master.cf /etc/postfix/master.cf
# #COPY
# #COPY

ENTRYPOINT [ "tail" ,"-f" , "/dev/null" ]