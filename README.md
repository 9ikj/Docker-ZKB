# Docker-ZKB

[ZeroKingBot](https://github.com/KingPrimes/ZeroKingBot) Docker deployment.

## Usage
### Use docker-compose.yml

```yml
version: '3'
services:
  zkb:
    image: registry.cn-shanghai.aliyuncs.com/9ikj/docker-zkb:latest
    container_name: zkb
    ports:
      - "8080:8080"
    environment:
      - REDIS_HOST=redis
    restart: always
    volumes:
      - ./db:/app/db
    depends_on:
      - redis
  redis:
    image: redis:latest
    container_name: redis
    ports:
      - "6379:6379"
    restart: always
```
