PAM21

ls /usr/lib64/security/ <-- ON SON ELS MODULS.so

  PAM21 BASE: 
  Creció users unix01,unix02,unix03 + arxiu /etc/login.defs
  (es el fitxer on podem posar, si al crear un usuari volem creció del home automaticament, el nº de reintents de login, gid que s'otorgara per defecte,..)

  
  PAM21 EXERCICIS: 
  Practicar amb compartir paths amb /etc/exports d'un servidor X
			i montar-los al home de l'usuar (pam_mount.conf.xml) quan es loggeja
			(llibreries noves del docker: libpam-pwquality, libpam-mount, nfs-common)	



  PAM21:LDAP: 
Juntar LDAP + authentificació d'usuaris amb PAM
(configurem les regles PAM per permetre tant usuaris unix com usuaris LDAP)
	
nsswitch.conf -->  Especifica d'on obtenir info sobre una categoria i quina font(columna) te + prioritat (en el nostre cas usuaris i grups a buscar a /etc/XX i sino ldap)

fonts:

  nis  Vol dir que busca a: /lib/libnss_nis.so (apt-get install libnss-nis)
  db   Esto busca en /lib/libnss_db.so   (apt-get install libnss-db)
  files   Busca a /etc/ qualsevol nom de categoria (ex: passwd,shadow)

/etc/nslcd.conf	--> especifica al PAM on es el LDAP i la base de dades del LDAP
/etc/nscd.conf --> Manté la inform LDAP per manteir la connexió viva

llibreries noves del docker: 
libnss-ldapd --> Permet utiltizar SLL o TLS i garanteix la integritat de la transf de dades 
libpam-ldapd --> Permet utilitzar SSL o TLS per passar amb seguretat els passwords
nslcd 
nslcd-utils  --> ???
ldap-utils --> per poder utilitzar comandes client LDAP
---------

COMPROBAR SI FUNCIONA EL LINK A LDAP?

Validació-1 Acceś al IP en aquest punt el host PAM està configurat per accedir a la informació LDAP de
manera que les ordres getent han de funcionar i serveixen de mecanisme de validació de si tot està correctament
configurat o no.


 getent passwd
 getent group

