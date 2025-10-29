FROM alpine:3.19
LABEL maintainer="Anass EREKYSY <anass@example.com>"
WORKDIR /app
COPY docker-compose.yml ./
COPY .env ./
CMD ["echo", "Compose stack: MongoDB + Redis"]
