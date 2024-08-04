#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

# Install system dependencies for mysqlclient
apt-get update && apt-get install -y \
    build-essential \
    libssl-dev \
    libffi-dev \
    libmysqlclient-dev \
    pkg-config

# Install Python dependencies
pip install -r requirements.txt

# Collect static files
python manage.py collectstatic --noinput

# Apply database migrations
python manage.py migrate
