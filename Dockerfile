# Use a base image with OpenJDK 17
FROM openjdk:17-jdk

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file from the host's target directory to the container
COPY target/springboot-thymeleaf-crud-web-app-0.0.1-SNAPSHOT.jar /app/application.jar

# Expose the port that your Spring Boot application listens on
EXPOSE 8080

# Define the entry point to run your Spring Boot application
ENTRYPOINT ["java", "-jar", "application.jar"]
