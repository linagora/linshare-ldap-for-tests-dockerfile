# README

# Suffix and accounts

suffix: dc=linshare,dc=org

## Read only account

binddn: cn=linshare,dc=linshare,dc=org
bindpw: linshare


## Configuration directory:

`/opt/bitnami/openldap/etc/slapd.d/`

## build & test

```
docker build -t ldap:latest .
docker run -p 1389:1389 ldap:latest
docker run -e BITNAMI_DEBUG=true -p 1389:1389 ldap:latest
ldapsearch -H ldap://localhost:1389 -D cn=linshare,dc=linshare,dc=org -w linshare -b dc=linshare,dc=org -LLL dn
```

## root

binddn: cn=admin,dc=linshare,dc=org
bindpw: adminlinshare

# Users

Branch : ou=People,dc=linshare,dc=org

* user1@linshare.org: password1
* user2@linshare.org: password2
* user3@linshare.org: password3
* user4@linshare.org: password4
* user5@linshare.org: password5
* user6@linshare.org: password6
* user7@linshare.org: password7
* test1@linshare.org: password1
* test2@linshare.org: password2
* external1@linshare.org: password1
* external2@linshare.org: password2
