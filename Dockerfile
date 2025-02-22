# Use a specific Tomcat version with JDK
FROM tomcat:9.0.85-jdk17

# Set working directory
WORKDIR /usr/local/tomcat/webapps/

# Remove default ROOT app to avoid conflicts
RUN rm -rf ROOT

# Copy WAR file from the GitHub Actions artifact
COPY ./target/hello-1.0.war ./ROOT.war

# Expose port 8080
EXPOSE 8080

# Add healthcheck for container monitoring
HEALTHCHECK --interval=30s --timeout=10s --start-period=10s --retries=3 \
  CMD curl -f http://localhost:8080/ || exit 1

# Start Tomcat
CMD ["catalina.sh", "run"]
