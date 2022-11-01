FROM tomcat:latest
LABEL maintainer: "Naveen sai"
ADD ./target/webapp.war /usr/local/tomcat/webapp/
EXPOSE 8080
CMD ["catalina.sh", "run"]
