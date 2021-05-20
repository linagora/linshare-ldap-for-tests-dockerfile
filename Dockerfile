FROM osixia/openldap:1.5.0
MAINTAINER LinShare <linshare@linagora.com>

ADD bootstrap /container/service/slapd/assets/config/bootstrap
ADD certs /container/service/slapd/assets/certs
ADD environment /container/environment/01-custom
