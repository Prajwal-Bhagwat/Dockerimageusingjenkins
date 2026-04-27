FROM openjdk:21-slim

WORKDIR /app

COPY Hello.class .

CMD ["java", "Hello"]
