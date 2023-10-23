FROM eclipse-temurin:11-jdk-jammy
WORKDIR /zkb
RUN curl -L -o /zkb/ZeroKingBot.jar https://github.com/9ikj/ZeroKingBot/releases/download/4.2.9/ZeroKingBot.jar
COPY entrypoint.sh /zkb/entrypoint.sh
ENV REDIS_HOST=localhost
EXPOSE 8080
ENTRYPOINT [ "entrypoint.sh" ]