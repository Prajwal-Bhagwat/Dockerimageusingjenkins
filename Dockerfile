FROM eclipse-temurin:17-jre-alpine

WORKDIR /app

COPY Hello.java /app
RUN  ["javac","Hello.java"]
CMD ["java", "Hello"]
