FROM eclipse-temurin:8-jdk-jammy as build-stage
WORKDIR /usr/src/app
COPY . .
RUN ./mvnw package

FROM eclipse-temurin:8-jre-jammy
WORKDIR /usr/src/app
EXPOSE 8080
COPY --from=build-stage /usr/src/app/target/docker-example-1.1.3.jar /usr/src/app/
RUN useradd -m appuser
USER appuser
CMD ["java", "-jar","docker-example-1.1.3.jar"]
