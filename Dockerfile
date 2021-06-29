FROM docker.io/bitnami/openldap:2.4.58
MAINTAINER LinShare <linshare@linagora.com>

# ADD certs /container/service/slapd/assets/certs

ENV BITNAMI_DEBUG=false
ENV LDAP_ROOT=dc=linshare,dc=org
ENV LDAP_ADMIN_USERNAME=admin
ENV LDAP_ADMIN_PASSWORD=adminlinshare

COPY schema/postfix-book.ldif /schema/custom.ldif
COPY data/linshare.ldif /ldifs/linshare.ldif
COPY ssl/* /opt/bitnami/openldap/certs/

ENV LDAP_ENABLE_TLS=yes
ENV LDAP_TLS_CERT_FILE=/opt/bitnami/openldap/certs/linshare.pem
ENV LDAP_TLS_KEY_FILE=/opt/bitnami/openldap/certs/linshare.key
ENV LDAP_TLS_CA_FILE=/opt/bitnami/openldap/certs/ca.pem
