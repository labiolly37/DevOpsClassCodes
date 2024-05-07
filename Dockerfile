# Use a base image with Java installed
FROM openjdk:11-jre-slim

# Set the working directory in the container
WORKDIR /app

# Copy the executable JAR file from the host filesystem to the container
COPY target/my-java-app.jar /app/my-java-app.jar

# Specify the command to run your application
CMD ["java", "-jar", "my-java-app.jar"]
