
FROM eclipse-temurin:17-jdk-alpine

WORKDIR /app


COPY Hello.java .


RUN javac Hello.java


CMD ["java", "Hello"]
