FROM ubuntu:latest
RUN apt update -y
RUN apt upgrade -y

#UTILITIES
#NE PAS OUBLIER DE SPECIFIER MAIL DANS LE FICHIER /etc/hostname(l'enregistrement MX)
#NE PAS OUBLIER DE SPECIFIER 172.96.231.209 mail.m1-3.ephec-ti.be mail DANS LE FICHIER /etc/hosts
#PEUT ETRE FAIT AVEC LE DOCKER COMPOSE YML

RUN apt install nano mutt telnet mailutils bsd-mailx net-tools -y
#INSTALL SERVER MYSQL
RUN apt install mariadb-server -y \
    && service mariadb start

#CONFIGURE DATABASE OF MAIL AND USER

#CONFIGURE POSTFIX
RUN  apt install postfix postfix-mysql -y
COPY postfix/main.cf /etc/postfix/main.cf 
COPY postfix/virtual-users.cf /etc/postfix/virtual-users.cf 
COPY postfix/virtual-domains.cf /etc/postfix/virtual-domains.cf 
COPY postfix/virtual-email2email.cf /etc/postfix/virtual-email2email.cf

RUN  chmod -R o-rwx /etc/postfix
RUN  postmap -a m1-3.ephec-ti.be mysql:/etc/postfix/virtual-domain.cf


RUN mkdir /var/mail/m1-3.ephec-ti.be

#CREATE VMAIL TO READ MAIL FROM THE SERVER
RUN groupadd -g 5000 vmail
RUN useradd -g vmail -u 5000 vmail -d /var/mail
RUN chown -R vmail:vmail /var/mail

#DOVECOT
RUN  apt install dovecot-core dovecot-imapd dovecot-pop3d dovecot-lmtpd dovecot-mysql-y
COPY dovecot/dovecot.conf /etc/dovecot/dovecot.conf
COPY dovecot/dovecot-sql.conf.ext /etc/dovecot/dovecot-sql.conf.ext
COPY dovecot/conf.d/10-mail.conf /etc/dovecot/conf.d/10-mail.conf
COPY dovecot/conf.d/10-auth.conf /etc/dovecot/conf.d/10-auth.conf
COPY dovecot/conf.d/10-master.conf /etc/dovecot/conf.d/10-master.conf
COPY dovecot/conf.d/10-ssl.conf /etc/dovecot/conf.d/10-ssl.conf

RUN openssl req -newkey rsa:2048 -nodes -keyout /etc/ssl/private/dovecot.key -x509 -days 365 -out /etc/ssl/certs/dovecot.pem -subj "/C=BE/ST=Braban/L=Louvain-La-Neuve/O=EPHEC/OU=IT/CN=mail.m1-3.ephec-ti.be"
#CONFIGURE SSL CERTIFICATE
# RUN apt update
# RUN apt install spamassassin spamc

# #CONFIGURE OPENDKIM

RUN apt install opendkim opendkim-tools -y 
RUN mkdir /etc/opendkim
RUN  opendkim-genkey -s dkimkey -d m1-3.ephec-ti.be
RUN chown opendkim:opendkim dkimkey.private


#Install spamassassin
RUN apt install spamassassin spamc -y
RUN groupadd spamd
RUN useradd -g spamd -s /usr/sbin/nologin -d /var/log/spamassassin -m spamd
COPY spamassassin/spamassassin /etc/default/spamassassin

RUN chmod -R 755 /etc/postfix
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