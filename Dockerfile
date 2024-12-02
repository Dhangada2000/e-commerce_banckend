# Use OpenJDK 21 as base image
FROM openjdk:21-jdk-slim

# Set the working directory
WORKDIR /app

# Copy the jar file into the container
COPY target/ecommerce-0.0.1-SNAPSHOT.jar app.jar

# Expose the port the app will run on
EXPOSE 8080

# Run the application
CMD ["java", "-jar", "app.jar"]
