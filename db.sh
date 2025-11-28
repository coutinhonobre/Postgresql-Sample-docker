#!/bin/bash

# Database Automation Script

COMMAND=$1

case "$COMMAND" in
  start)
    echo "Starting database..."
    docker compose up -d
    ;;
  stop)
    echo "Stopping database..."
    docker compose down
    ;;
  restart)
    echo "Restarting database..."
    docker compose down
    docker compose up -d
    ;;
  logs)
    echo "Showing logs..."
    docker compose logs -f
    ;;
  *)
    echo "Usage: $0 {start|stop|restart|logs}"
    exit 1
    ;;
esac
