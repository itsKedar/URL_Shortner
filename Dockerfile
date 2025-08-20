# Use an official Tomcat image as the base image
FROM tomcat:9.0.73-jdk17 as base

# Copy the WAR file to the webapps directory in Tomcat
COPY target/*.war /usr/local/tomcat/webapps/ROOT.war

# Expose port 8080
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
