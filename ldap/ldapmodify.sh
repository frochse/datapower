ldapsearch -x -H ldap://localhost -b dc=vs,dc=com -D "cn=admin,dc=vs,dc=com" -w qw34er
ldapmodify -x -H ldap://localhost  -D "cn=admin,dc=vs,dc=com" -w qw34er -c -a -f ./setup.ldif
