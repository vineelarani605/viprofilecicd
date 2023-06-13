# Use a base image with Java and Tomcat pre-installed
FROM tomcat:latest

# Copy the WAR file to the Tomcat webapps directory
COPY viprofilecicd/target/vprofile-v2.war  /usr/local/tomcat/webapps/

# Expose the default Tomcat port
EXPOSE 8082
