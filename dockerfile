FROM tomcat:latest
USER node
ADD /target/hello-1.0.war /usr/local/tomcat/webapps/
CMD ["catalina.sh" "run"]
