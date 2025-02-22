FROM tomcat:9
# Set working directory
WORKDIR /usr/local/tomcat
# Remove default webapps to avoid conflicts
RUN rm -rf webapps/*
COPY ./dev/target/hello-1.0.war ./webapps/hello-1.0.war
CMD ["catalina.sh", "run"]
EXPOSE 8080