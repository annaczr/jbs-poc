FROM openjdk:17-jdk-slim
WORKDIR src
ADD src/. .

FROM

EXPOSE 8080

WORKDIR /app

COPY --from=build /app/build/classes /app/classes
COPY --from=build /app/build/generated /app/generated
COPY --from=build /app/build/resources /app/resources
COPY --from=build /app/build/tmp /app/tmp

ENTRYPOINT ["java", "-cp"
