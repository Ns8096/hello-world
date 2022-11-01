FROM tomcat:latest
WORKDIR /usr/local/tomcat/webapps
COPY  /home/ubuntu/.jenkins/workspace/end-to-end/webapp/target/webapp.war .
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "webapp.war"]
