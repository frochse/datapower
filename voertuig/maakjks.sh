openssl pkcs12 -export -name soapuimockserver -in ./StudentKeyObj-sscert.pem -inkey ./StudentKeyObj-privkey.pem -out student.p12
keytool -importkeystore -destkeystore student.jks -deststorepass qw34er -srckeystore ./student.p12 -srcstoretype PKCS12 -srcstorepass qw34er   
