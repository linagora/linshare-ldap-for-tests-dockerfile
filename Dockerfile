FROM osixia/openldap:1.1.6
MAINTAINER LinShare <linshare@linagora.com>

#squach mail.schema with postfix-book.schema because having both schemas create conflict in attribute
COPY postfix-book.schema /container/service/slapd/assets/config/bootstrap/schema/mmc/mail.schema
ADD bootstrap /container/service/slapd/assets/config/bootstrap
ADD certs /container/service/slapd/assets/certs
ADD environment /container/environment/01-custom
