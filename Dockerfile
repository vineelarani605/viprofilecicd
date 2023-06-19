 Use a base image with Java and Tomcat pre-installed
FROM tomcat:latest

# Set the working directory to Tomcat's webapps directory
WORKDIR /usr/local/tomcat/webapps

# Copy the WAR file from the local machine to the container
COPY target/vprofile-v2.war /usr/local/tomcat/webapps/


# Update Tomcat's server.xml to use port 8082
RUN sed -i 's/Connector port="8080"/Connector port="8082"/' /usr/local/tomcat/conf/server.xml

# Expose port 8082
EXPOSE 8082

# Start Tomcat
CMD ["catalina.sh", "run"]
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
