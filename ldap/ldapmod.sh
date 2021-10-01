
export containerid=`docker ps | grep ldap | awk '{ print $1}'`
docker exec -it $containerid /bin/sh -c "ldapsearch  -Y EXTERNAL -H ldapi:/// -b cn=config 'olcDatabase={1}mdb' "
docker cp ./rights.ldif $containerid:/    
docker exec -it $containerid /bin/sh -c "/usr/bin/ldapmodify  -Y EXTERNAL -H ldapi:/// -f  rights.ldif"
docker exec -it $containerid /bin/sh -c "ldapsearch  -Y EXTERNAL -H ldapi:/// -b cn=config 'olcDatabase={1}mdb' "
