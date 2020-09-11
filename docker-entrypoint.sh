#!/bin/bash
python manage.py migrate                  # Apply database migrations
python manage.py load_pet_data            # Load the data into db using management command
python manage.py collectstatic --noinput  # Collect static files

# Prepare log files and start outputting logs to stdout
mkdir -p "/opt/logs" && touch "/opt/logs/gunicorn.log"
mkdir -p "/opt/logs" && touch "/opt/logs/access.log"

tail -n 0 -f /opt/logs/*.log &

# Start Gunicorn processes
echo Starting Gunicorn

exec gunicorn wisdompets.wsgi:application \
    --name Django-Sample-App \
    --bind 0.0.0.0:8000 \
    --workers 3 \
    --log-level=info \
    --log-file=/opt/logs/gunicorn.log \
    --access-logfile=/opt/logs/access.log \
    "$@"