# Simple button

A simple Spring Boot web application demonstrating a basic button interface. This application is built with Spring Boot 2.1.3 and uses Thymeleaf for templating.

## How to start

### Without docker

Make sure you have java 8 installed

Build the project with `./mvnw package`

Run with `java -jar ./target/docker-example-1.1.3.jar`

The project should open in `8080` and you get a message by pressing the button.

### With docker
```bash
docker build . -t spring-project && docker run -p 8080:8080 spring-project
```

The application will be available at <http://localhost:8080>. Press the button to see the interactive message functionality.

## Link to the deployed application

<https://spring-example-project-z0kg.onrender.com>
