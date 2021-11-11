# pamserver
FROM debian:latest
LABEL version="1.0"
LABEL author="@edt ASIX-M06"
LABEL subject="PAM host"
RUN apt-get update
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -y install procps iproute2 tree nmap vim less finger passwd libpam-pwquality libpam-mount libpam-ldapd libnss-ldapd nslcd nslcd-utils ldap-utils python python3 pip libpam-python

# apt install -f /opt/docker/libpam-python_1.0.8-1_amd64.deb --> altre forma d'instalar libpam-python
# libpam-ldapd --> nss-pam-ldap 
RUN pip install python-pam
RUN mkdir /opt/docker
COPY * /opt/docker/
RUN chmod +x /opt/docker/startup.sh
WORKDIR /opt/docker
CMD /opt/docker/startup.sh
