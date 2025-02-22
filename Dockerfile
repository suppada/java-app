FROM tomcat:9
WORKDIR /home/runner/work/java-app/java-app
COPY /dev/target/hello-1.0.war /usr/local/tomcat/webapps/
CMD ["catalina.sh", "run"]
EXPOSE 8080
