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

dkimkey._domainkey      IN      TXT     ( "v=DKIM1; h=sha256; k=rsa; " "p=MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA3d5PvPbNq9CWbCpT70Fqxxe58AT/of9PBLPKPfwM6i20FXj48BrDjCpzlkyaErs/aIVCjAuADmCkGUNVedaOVLQE3r2jXBYplwPt0B037o3autKe6+em61weUN0OWqAcsBMgjnjOjjX6gf0F8cj9ZNtmNWzB3Vsb6V0ocSsUQ9dtgmnrJKj16wt5V83QjF2t1WqTVvOD0oLcPx"
          "PKmLmWaSd05dRTczJ9HY5l15aZQkhEkDAti6aONotKzEyVHZY1+B2Q69Rns+XNNoTb78GjhazXBbNB7cZ4Q/RXzxQpQWXlYSmb2+7D9QziXl6i/gfhQxwGHIKYBdLuH7fKDd4DNQIDAQAB" )  ;

_dmarc          IN      TXT     "v=DMARC1; p=none; pct=100; rua=mailto:dmarc-reports@m1-3.ephec-ti.be"

smtp        IN      CNAME   mail

$INCLUDE "/etc/bind/keys/m1-3.ephec-ti.be.zsk.key" ;
$INCLUDE "/etc/bind/keys/m1-3.ephec-ti.be.ksk.key" ;
