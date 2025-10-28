# PayChase_DB

Dockerized MongoDB + Redis stack for PayChase, with admin UIs for local development.


## What’s inside

1. MongoDB 7 (primary DB)
3. Redis 7 (queues, rate limits, caching)
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

## Stop the services

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
| redis           | redis:7                        | 6379 → 6379             | Queues / caching |

- Network: paychase_net
- Volumes: mongo_data, redis_data