FROM eclipse-temurin:21-jdk-jammy
WORKDIR /hello-spring
COPY . .
RUN chmod +x mvnw
RUN ./mvnw clean package -DskipTests
RUN cp target/*.jar hello-spring.jar
ENTRYPOINT ["java","-jar","/hello-spring/hello-spring.jar"]

