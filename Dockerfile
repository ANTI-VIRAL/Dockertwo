# Gunakan Python image ringan
FROM python:3.11-slim

# Update & install dependensi
RUN apt-get update \
 && apt-get install -y --no-install-recommends wget ca-certificates curl ffmpeg \
 && rm -rf /var/lib/apt/lists/*

# Install yt-dlp (via pip, karena lebih stabil & auto update-able)
RUN pip install yt-dlp

# Salin start.sh dari host ke image
COPY start.sh /usr/local/bin/start.sh

# Pastikan bisa dieksekusi
RUN chmod +x /usr/local/bin/start.sh

# Buat user non-root
RUN useradd -ms /bin/bash test

# Switch ke user test dan direktori home-nya
USER test
WORKDIR /home/test

# Jalankan skrip saat container start
ENTRYPOINT ["/usr/local/bin/start.sh"]
