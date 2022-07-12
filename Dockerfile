FROM quay.io/keycloak/keycloak:latest
#Adding custom ENTRYPOINT
ENTRYPOINT ["/opt/keycloak/bin/kc.sh", "start --proxy edge --spi-x509cert-lookup-nginx-ssl-client-cert=SSL_CLIENT_CERT --spi-x509cert-lookup-nginx-ssl-cert-chain-prefix=CERT_CHAIN --spi-x509cert-lookup-nginx-certificate-chain-length=10" , "--auto-build", "--db=postgres"]