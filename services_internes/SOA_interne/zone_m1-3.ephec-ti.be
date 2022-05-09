$ORIGIN m1-3.ephec-ti.be.
$TTL 86400      ; 1 day
@           IN     SOA      ns.m1-3.ephec-ti.be.  Groupe-3.ephec-ti.be.(
                                1          ; serial à incrementer à chaque modification 
                                21600      ; refresh (6 hours)
                                3600       ; retry (1 hour)
                                604800     ; expire (1 week)
                                86400      ; minimum (1 day)
                                )
;

@           IN      NS      ns.m1-3.ephec-ti.be.
@           IN      MX  10  mail.m1-3.ephec-ti.be. 
         
@           IN      A       176.96.231.202
ns          IN      A       176.96.231.202
www         IN      A       176.96.231.201
b2b         IN      A       176.96.231.201
mail        IN      A       176.96.231.203
