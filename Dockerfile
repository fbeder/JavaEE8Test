FROM airhacks/glassfish
COPY ./target/JavaEE8Test.war ${DEPLOYMENT_DIR}
