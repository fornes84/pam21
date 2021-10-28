#! /bin/bash

useradd -m -s /bin/bash unix01
useradd -m -s /bin/bash unix02
useradd -m -s /bin/bash unix03
echo -e "unix01\nuix01" | passwd unix01
echo -e "unix02\nuix02" | passwd unix02
echo -e "unix03\nuix03" | passwd unix03

cp /opt/docker/login.defs /etc/login.defs

/bin/bash

