FROM eclipse-temurin:11-jre-alpine
RUN /bin/sh -c apk add --no-cache font-noto-cjk wget && \
    rm -rf /var/cache/apk/*
WORKDIR /app
RUN wget -O ZeroKingBot.jar https://ghproxy.com/https://github.com/9ikj/ZeroKingBot/releases/download/4.2.9/ZeroKingBot.jar
VOLUME [ "/app/db" ]
ENV REDIS_HOST=localhost
ENV TZ="Asia/Shanghai"
EXPOSE 8080
CMD ["java", "-Dfile.encoding=UTF-8","-jar", "/app/ZeroKingBot.jar"]
