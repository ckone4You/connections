FROM openjdk:11
WORKDIR application
COPY . .
RUN ./mvnw package

ENTRYPOINT ["java","-jar","/application/target/connections-0.0.1-SNAPSHOT.jar"]
