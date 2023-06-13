
# Use an official Maven image as the base image
FROM maven:3.8.1-openjdk-11 AS builder

# Set the working directory in the container
WORKDIR /app

# Copy the pom.xml file to the working directory
COPY pom.xml .

# Download the project dependencies
RUN mvn dependency:go-offline -B

# Copy the project source code to the working directory
COPY src/ ./src/

# Build the application
RUN mvn package -DskipTests

# Use an OpenJDK image as the base image for the final image
FROM adoptopenjdk:11-jre-hotspot

# Set the working directory in the container
WORKDIR /app

# Copy the built JAR file from the builder stage to the working directory
COPY --from=builder /app/target/*.jar app.jar

# Expose the default port (change it if necessary)
EXPOSE 8082

# Define the command to run the application
CMD ["java", "-jar", "app.jar"]
