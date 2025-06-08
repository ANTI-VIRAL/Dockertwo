FROM debian:bookworm-slim

WORKDIR /app

RUN apt-get update && apt-get install -y \
    curl wget ca-certificates python3 \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

COPY start.sh /start.sh
RUN chmod +x /start.sh

CMD ["/start.sh"]
