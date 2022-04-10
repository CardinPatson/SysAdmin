FROM ubuntu:latest
RUN apt update -y
RUN apt upgrade -y

RUN apt install nano mutt telnet mailutils net-tools -y

RUN apt install mysql-server -y


#INSTALL POSTFIX 
RUN apt install postfix postfix-mysql 

#CONFIGURE POSTFIX 
