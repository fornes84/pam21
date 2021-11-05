#! /bin/bash

useradd -m -s /bin/bash unix01
useradd -m -s /bin/bash unix02
useradd -m -s /bin/bash unix03
echo -e "unix01\nunix01" | passwd unix01
echo -e "unix02\nunix02" | passwd unix02
echo -e "unix03\nunix03" | passwd unix03

cp /opt/docker/login.defs /etc/login.defs 
# opcions de loggin unix

#cp /opt/docker/exports /etc/exports
#per permetre compartir paths 

cp /opt/docker/nsswitch.conf /etc/nsswitch.conf
#
cp /opt/docker/nslcd.conf /etc/nslcd.conf
#
cp /opt/docker/system-auth /etc/pam.d/system-auth
#

/usr/sbin/nslcd
/usr/sbin/nscd
#executem servei ??

/bin/bash

