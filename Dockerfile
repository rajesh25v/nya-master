# Minimal Dockerfile that copies deploy/app.jar prepared by CI
FROM eclipse-temurin:17-jdk-jammy
WORKDIR /app
# This file must exist in the build context (repo root) at ./deploy/app.jar
COPY deploy/app.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","/app/app.jar"]