FROM openjdk:17-jdk-slim
WORKDIR src
ADD src/. .

EXPOSE 8080

ENTRYPOINT ["java", "-cp"]
