#!/bin/bash
# Install dependencies
pip install -r requirements.txt

# Apply migrations
python manage.py migrate

# Collect static files
python3.9 manage.py collectstatic --noinput
