FROM eclipse-temurin:11-jdk-jammy
WORKDIR /zkb
COPY entrypoint.sh /zkb/entrypoint.sh
ENV REDIS_HOST=localhost
EXPOSE 8080
ENTRYPOINT [ "entrypoint.sh" ]