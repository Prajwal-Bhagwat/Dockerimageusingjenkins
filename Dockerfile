FROM eclipse-temurin:17-jre-alpine

WORKDIR /app

COPY Hello.class .

CMD ["java", "Hello"]
