$ORIGIN m1-3.ephec-ti.be.
$TTL 86400      ; 1 day
@           IN     SOA      ns.m1-3.ephec-ti.be.  Groupe-3.ephec-ti.be.(
                                1          ; serial a incrementer a chaque fois qu'on fait une modification 
                                21600      ; refresh (6 hours)
                                3600       ; retry (1 hour)
                                604800     ; expire (1 week)
                                86400      ; minimum (1 day)
                                )
;
@           IN      NS      ns.m1-3.ephec-ti.be.
            IN      MX  10  mail.m1-3.ephec-ti.be.
@           IN      A       176.96.231.203
ns          IN      A       176.96.231.203
www         IN      A       176.96.231.201
b2b         IN      A       176.96.231.201

mail        IN      A       176.96.231.203

;Records DKIM,DMARC

@       IN      TXT     "v=spf1 include:mail.m1-3.ephec-ti.be ip4:176.96.231.203 -all"

default._domainkey      IN      TXT     ( "v=DKIM1; h=sha256; k=rsa; "
          "p=MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAwnC8RCsusTsxRfZvj4PrB9TZqlm2tdxyZ2o6+HroUfqvMnIwUeCZkTDHKv/YisRPrSzPF+gkBN4F7yWflKYkRHh+32xs+z1bEWaC0CmBZ+xbNPAayrGj+VJm56UeeN5yCHxWI60TMGp0eZvBInvZ/NFbSezTgNCuJdN2FqJ8sPgG+xpOlbEkUfRFjURAU0QZgX1EeJ7t4ItCMW"
          "xT6sFZBMcinp1GrzK5cgEI9iTfcbpLYbZ4XIUYQeLJ2nab3abEtezNgFV052XM617VKFKaKLHEJ5H0+mtywNSClOqtkb1MkdxU4LqDjV4V10FvRXDAQij2KRY3+3cWD1d8YgaHLwIDAQAB" )  ; ----- DKIM key default for m1-3.ephec-ti.be

_dmarc          IN      TXT     "v=DMARC1; p=none; pct=100; rua=mailto:dmarc-reports@m1-3.ephec-ti.be"

smtp        IN      CNAME   mail
