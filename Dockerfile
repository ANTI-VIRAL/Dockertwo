FROM debian:bookworm-slim

WORKDIR /app

# Install only necessary dependencies
RUN apt-get update && apt-get install -y \
    wget python3 \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# Salin start.sh
COPY start.sh /start.sh
RUN chmod +x /start.sh

CMD ["/start.sh"]
