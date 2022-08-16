FROM tomcat:jre8-alpine
USER node
ADD /target/hello-1.0.war /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["catalina.sh", "run", "java","bash"]
