# ---------- Dockerfile ----------
# Basis Python ringan (sudah ada pip + venv)
FROM python:3.11-slim

# Instal wget & sertifikat TLS supaya bisa unduh biner
RUN apt-get update \
 && apt-get install -y --no-install-recommends wget ca-certificates \
 && rm -rf /var/lib/apt/lists/*

# Salin skrip start-up buatanmu
COPY start.sh /usr/local/bin/start.sh
RUN chmod +x /usr/local/bin/start.sh

# Pakai user non-root biar lebih aman,
# HOME-nya otomatis /home/test  → cocok dgn ~/.cache di skrip
RUN useradd -ms /bin/bash test
USER test

WORKDIR /home/test

# Ketika kontainer dijalankan, langsung eksekusi start.sh
ENTRYPOINT ["/usr/local/bin/start.sh"]
# --------------------------------
