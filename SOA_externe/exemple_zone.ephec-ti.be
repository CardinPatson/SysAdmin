$TTL 86400	; 1 day
@		IN SOA	ns.l2-3.ephec-ti.be. ephecAdmingr3.ephec.be. (
				2001062514 ; serial
				21600      ; refresh (6 hours)
				3600       ; retry (1 hour)
				604800     ; expire (1 week)
				86400      ; minimum (1 day)
				)
			NS	ns.l2-3.ephec-ti.be.
			MX	10 mail.l2-3.ephec-ti.be.
$ORIGIN l2-3.ephec-ti.be.


#Changer les ips
$TTL 3600	; 1 hour
client-1		A	192.168.0.14
			DHCID	( AAABMdWXXjeoox2IxyGzWBrUqAx3C1aURfE3qDMtuRXR
				18Q= ) ; 0 1 32
client-2		A	192.168.0.11
			DHCID	( AAABLODYjPTPY6aCOOEq1B5DsmV6XdVLzrsGVP1zs6Hv
				uFc= ) ; 0 1 32


$TTL 86400	; 1 day
mail			A	192.168.0.5
resolver		A	192.168.0.1
soa			A	192.168.0.2
www			A	192.168.0.4