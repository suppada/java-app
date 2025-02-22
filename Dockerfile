FROM tomcat:9
WORKDIR /dev/
COPY ./dev/target/hello-1.0.war /usr/local/tomcat/webapps/
CMD ["catalina.sh", "run"]
EXPOSE 8080
