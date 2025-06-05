FROM debian:bookworm-slim

WORKDIR /app

# Install dependencies dan yt-dlp (versi binary agar ringan)
RUN apt-get update && apt-get install -y \
    curl wget iproute2 iputils-ping net-tools \
    ca-certificates python3 \
    && curl -L https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp -o /usr/local/bin/yt-dlp \
    && chmod +x /usr/local/bin/yt-dlp \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# Salin script start
COPY start.sh /start.sh
RUN chmod +x /start.sh

CMD ["/start.sh"]
