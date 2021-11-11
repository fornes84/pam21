#! /bin/bash

useradd -m -s /bin/bash unix01
useradd -m -s /bin/bash unix02
useradd -m -s /bin/bash unix03
echo -e "unix01\nunix01" | passwd unix01
echo -e "unix02\nunix02" | passwd unix02
echo -e "unix03\nunix03" | passwd unix03

# pam21-ldap
cp /opt/docker/login.defs /etc/login.defs	# Sobreescrivim els fitxers per els nostres.
cp /opt/docker/ldap.conf /etc/ldap/ldap.conf
cp /opt/docker/nsswitch.conf /etc/nsswitch.conf
cp /opt/docker/nslcd.conf /etc/nslcd.conf
cp /opt/docker/common-auth /etc/pam.d/common-auth
cp /opt/docker/common-session /etc/pam.d/common-session
cp /opt/docker/common-account /etc/pam.d/common-account
cp /opt/docker/common-password /etc/pam.d/common-password
cp /opt/docker/pam_mount.conf.xml /etc/security/pam_mount.conf.xml

# pam21-python
cp /opt/docker/chfn /etc/pam.d/chfn

cp /opt/docker/pam_pyquiz.so /lib/x86_64-linux-gnu/security/pam_pyquiz.so

/usr/sbin/nscd
/usr/sbin/nslcd

/bin/bash
