FROM amazoncorretto:8 AS build-stage
WORKDIR /usr/src/app
COPY . .
RUN ./mvnw package

FROM amazoncorretto:8-alpine-jre
WORKDIR /usr/src/app
COPY --from=build-stage /usr/src/app/target/docker-example-1.1.3.jar ./app.jar
EXPOSE 8080
CMD ["java", "-jar", "app.jar"]
