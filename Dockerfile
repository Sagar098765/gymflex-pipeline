# Tomcat 9 with Java 21
FROM tomcat:9.0-jdk21-temurin-noble

# Remove Tomcat's default sample applications
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy the Maven-generated WAR file and deploy it as ROOT.war
# This makes your website load directly at http://localhost:8081/
COPY gymflexapp/target/gymflex.war /usr/local/tomcat/webapps/ROOT.war

# Tomcat's internal HTTP connector listens on port 8080
EXPOSE 8080

# Start Tomcat in the foreground
CMD ["catalina.sh", "run"]