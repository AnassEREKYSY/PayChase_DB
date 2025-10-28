# PayChase_DB

Dockerized MongoDB + Redis stack for PayChase, with admin UIs for local development.


## What’s inside

1. MongoDB 7 (primary DB)
2. Mongo Express (Mongo UI)
3. Redis 7 (queues, rate limits, caching)
4. Redis Commander (Redis UI)
5. Named volumes for data durability
6. Bridge network paychase_net

## Prerequisites

1. Docker & Docker Compose v2+
2. Free ports: 27017, 8081, 6379, 8082

## Quick start

```bash
git clone https://github.com/AnassEREKYSY/PayChase_DB.git
cd PayChase_DB

docker compose up -d
```

Mongo Express → http://localhost:8081
Redis Commander → http://localhost:8082

```bash
To stop the container : 
docker compose down

To stop the container and keep the data: 
docker compose down --remove-orphans

To wipe everything : 
docker compose down -v
```




## Services & ports

| Service         | Image                          | Port (host → container) | Purpose          |
| --------------- | ------------------------------ | ----------------------- | ---------------- |
| mongo           | mongo:7                        | 27017 → 27017           | Primary DB       |
| mongo-express   | mongo-express:1.0.2            | 8081 → 8081             | Mongo admin UI   |
| redis           | redis:7                        | 6379 → 6379             | Queues / caching |
| redis-commander | rediscommander/redis-commander | 8082 → 8081             | Redis admin UI   |

- Network: paychase_net
- Volumes: mongo_data, redis_data