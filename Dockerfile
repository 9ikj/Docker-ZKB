FROM eclipse-temurin:11-jdk-jammy
WORKDIR /app
COPY entrypoint.sh /entrypoint.sh
ENV REDIS_HOST=localhost
ENV TZ="Asia/Shanghai"
EXPOSE 8080
RUN chmod +x /entrypoint.sh
ENTRYPOINT [ "/entrypoint.sh" ]