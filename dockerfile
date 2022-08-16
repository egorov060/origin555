FROM tomcat:jre8-alpine
RUN groupadd --gid 2000 node \
  && useradd --uid 2000 --gid node --shell /bin/bash --create-home node
USER node
ADD /target/hello-1.0.war /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["catalina.sh", "run", "java","bash"]
