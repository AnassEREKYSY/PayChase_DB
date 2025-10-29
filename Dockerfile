FROM alpine:3.19
WORKDIR /app
COPY docker-compose.yml ./
CMD ["sh", "-lc", "echo 'PayChase DB stack image (mongo+redis). Compose is externalized; env is provided at deploy time.'"]
