# to create a jks you first have to export the priv and pub to the PKCS12 format <use as the keystore password qw34er >
openssl pkcs12 -export -name soapuimockserver -in ./fromclient-sscert.pem -inkey ./fromclient-privkey.pem -out client.p12
# now convert the p12 to the "legacy" jks format
keytool -importkeystore -destkeystore client.jks -deststorepass qw34er -srckeystore ./client.p12 -srcstoretype PKCS12 -srcstorepass qw34er   
#import public DP cert in the jks
keytool -import -alias dppublic -keystore ./client.jks -file ./fromdp-sscert.pem
keytool -list -keystore ./client.jks -storepass qw34er  2>/dev/null | grep Entry
