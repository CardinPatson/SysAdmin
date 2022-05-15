```
WoodyToy
├─ README.md
└─ SysAdmin
   ├─ Docs
   │  ├─ admin-II-Cdc-projet.pdf
   │  ├─ admin-II-enoncé-projet.pdf
   │  ├─ infrastructure_woody.png
   │  ├─ resume.txt
   │  ├─ workflow_dev.drawio
   │  └─ workflow_dev.png
   ├─ Mail
   │  ├─ addusername
   │  ├─ db
   │  │  ├─ db.sql
   │  │  └─ users.sql
   │  ├─ dkim-dmarc
   │  │  ├─ KeyTable
   │  │  ├─ opendkim.conf
   │  │  ├─ SigningTable
   │  │  └─ TrustedHosts
   │  ├─ docker-compose.yml
   │  ├─ Dockerfile
   │  ├─ dovecot
   │  │  ├─ conf.d
   │  │  │  ├─ 10-auth.conf
   │  │  │  ├─ 10-logging.conf
   │  │  │  ├─ 10-mail.conf
   │  │  │  ├─ 10-master.conf
   │  │  │  ├─ 10-ssl.conf
   │  │  │  └─ auth-sql.conf.ext
   │  │  ├─ dovecot-sql.conf.ext
   │  │  └─ dovecot.conf
   │  ├─ postfix
   │  │  ├─ main.cf
   │  │  ├─ master.cf
   │  │  ├─ virtual-domains.cf
   │  │  ├─ virtual-email2email.cf
   │  │  ├─ virtual-forwardings.cf
   │  │  └─ virtual-users.cf
   │  └─ spamassassin
   │     ├─ local.cf
   │     └─ spamassassin
   ├─ README.md
   ├─ schema.drawio
   ├─ schema.png
   ├─ Services_internes
   │  ├─ docker-compose.yml
   │  ├─ intranet
   │  │  ├─ Dockerfile
   │  │  ├─ index.php
   │  │  └─ intranet.conf
   │  ├─ range.txt
   │  ├─ resolver
   │  │  ├─ Dockerfile
   │  │  └─ named.conf
   │  ├─ samba
   │  │  ├─ shares.conf
   │  │  └─ smb.conf
   │  └─ SOA_interne
   │     ├─ db.intranet.woody
   │     ├─ Dockerfile
   │     ├─ named.conf
   │     └─ zone_reverse
   ├─ SOA_externe
   │  ├─ db.m1-3.ephec-ti.be
   │  ├─ docker-compose.yml
   │  ├─ Dockerfile
   │  └─ named.conf
   ├─ ssh.txt
   ├─ VoiP
   └─ Web
      ├─ b2b
      │  └─ index.php
      ├─ docker
      │  ├─ certbot
      │  │  └─ certbot.txt
      │  ├─ mysql
      │  │  └─ schema.sql
      │  ├─ nginx
      │  │  └─ default.conf
      │  └─ php
      │     ├─ Dockerfile
      │     └─ www.conf
      ├─ docker-compose.yml
      ├─ docker-compose.yml and dovecot
      └─ www
         └─ index.html

```