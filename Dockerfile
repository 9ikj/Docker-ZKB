FROM eclipse-temurin:11-jdk-jammy
WORKDIR /app
COPY entrypoint.sh /entrypoint.sh
ENV REDIS_HOST=localhost
ENV TZ="Asia/Shanghai"
EXPOSE 8080
RUN chmod +x /entrypoint.sh && \
    curl -L -o ZeroKingBot.jar https://github.com/9ikj/ZeroKingBot/releases/download/4.2.9/ZeroKingBot.jar
ENTRYPOINT [ "/entrypoint.sh" ]