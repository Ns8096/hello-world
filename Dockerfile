FROM tomcat:latest
LABEL maintainer: "Naveen sai"
ADD /home/ubuntu/.jenkins/workspace/build2/target/webapp.war /usr/local/tomcat/webapp/
EXPOSE 8080
CMD ["catalina.sh", "run"]
