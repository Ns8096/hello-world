FROM tomcat:latest
COPY  /home/ubuntu/.jenkins/workspace/end-to-end/webapp/target/webapp.war /usr/local/tomcat/webapps
WORKDIR /usr/local/tomcat/webapps 
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "webapp.war"]
