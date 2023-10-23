FROM eclipse-temurin:11-jdk-jammy
WORKDIR /app
RUN apt update -y
RUN apt install wget -y
RUN wget -O ZeroKingBot.jar https://ghproxy.com/https://github.com/9ikj/ZeroKingBot/releases/download/4.2.9/ZeroKingBot.jar
ENV REDIS_HOST=localhost
ENV TZ="Asia/Shanghai"
EXPOSE 8080
CMD [ "java -Dfile.encoding=UTF-8 -jar ZeroKingBot.jar" ]