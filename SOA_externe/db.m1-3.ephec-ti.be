$ORIGIN m1-3.ephec-ti.be.
$TTL 86400      ; 1 day
@           IN     SOA      ns.m1-3.ephec-ti.be.  c.tiakongouadje.students.ephec.be.(
                                1          ; serial a incrementer a chaque fois qu'on fait une modification 
                                21600      ; refresh (6 hours)
                                3600       ; retry (1 hour)
                                604800     ; expire (1 week)
                                86400      ; minimum (1 day)
                                )
;
@           IN      NS      ns.m1-3.ephec-ti.be.
@           IN      A       176.96.231.203
ns          IN      A       176.96.231.203
