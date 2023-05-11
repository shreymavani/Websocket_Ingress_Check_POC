FROM openjdk:17-jdk-slim
VOLUME /tmp
ARG JAR_FILE=/Websocket_spring_target/*.jar
COPY ${JAR_FILE} app.jar
WORKDIR /app
ENTRYPOINT ["java","-jar","/app.jar"]
