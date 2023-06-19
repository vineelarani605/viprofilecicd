# Use a base image with Java and Tomcat pre-installed
FROM tomcat:latest

# Set the working directory to Tomcat's webapps directory
WORKDIR /usr/local/tomcat/webapps

# Copy the WAR file from the local machine to the container
COPY vprofile-v2.war .

# Start Tomcat
CMD ["catalina.sh", "run"]
