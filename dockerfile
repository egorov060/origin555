FROM tomcat:jre8-latest
USER node
ADD /target/hello-1.0.war /usr/local/tomcat/webapps/
CMD ["/usr/local/tomcat/catalina.sh" "run"]
