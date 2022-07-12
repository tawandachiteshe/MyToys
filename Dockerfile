FROM quay.io/keycloak/keycloak:18.0.2
#Adding custom ENTRYPOINT
ENTRYPOINT ["/opt/keycloak/bin/kc.sh", "start" , "--auto-build", "--db=postgres"]