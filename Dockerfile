# Tomcat 9 with Java 21. This image tag is available from the official Tomcat image.
FROM tomcat:9.0-jdk21-temurin-noble

# Remove Tomcat's sample applications so GymFlex is the only deployed web app.
RUN rm -rf /usr/local/tomcat/webapps/*

# Build context is the repository root; Maven output is inside gymflexapp/target.
# ROOT.war makes the site available at http://localhost:<host-port>/
COPY gymflexapp/target/gymflex.war /usr/local/tomcat/webapps/ROOT.war

# Tomcat's default HTTP connector listens on container port 8080.
EXPOSE 8080

# Run Tomcat in the foreground so Docker can track the container process.
CMD ["catalina.sh", "run"]
