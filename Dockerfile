FROM eclipse-temurin:17-jdk-jammy
WORKDIR /app
COPY deploy/app.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","/app/app.jar"]