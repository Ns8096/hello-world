FROM tomcat:latest
LABEL maintainer: "Naveen sai"
COPY /webapp.war /usr/local/tomcat/webapps/testapp.war
EXPOSE 8080
CMD ["catalina.sh", "run"]
