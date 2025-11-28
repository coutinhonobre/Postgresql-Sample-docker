# PostgreSQL Docker Compose Setup

This project contains a simple PostgreSQL setup using Docker Compose, configured for external access and data persistence.

## Prerequisites

- Docker and Docker Compose installed.

## How to Use

### Start the Database

To start the database, run the following command in the directory containing the `docker-compose.yml` file:

```bash
docker compose up -d
```

The `-d` (detached) parameter runs the container in the background.

### Stop the Database

To stop and remove the container:

```bash
docker compose down
```

## Connection Details

The database will be accessible on port `5432` of your localhost.

- **JDBC URL**: `jdbc:postgresql://localhost:5432/sample_db`
- **Host**: `localhost`
- **Port**: `5432`
- **Database**: `sample_db`
- **User**: `postgres`
- **Password**: `1234`

## Data Persistence

Database data is saved in the `./data` folder within the same directory as `docker-compose.yml`. This ensures your data is not lost when you restart the container.

## Troubleshooting

If port `5432` is already in use, you may need to stop the service using it or change the port in `docker-compose.yml` (e.g., `"5433:5432"`).

## Automation Script

A `db.sh` script is included to make managing the database easier.

- **Start**: `./db.sh start`
- **Stop**: `./db.sh stop`
- **Restart**: `./db.sh restart`
- **Logs**: `./db.sh logs`

# Postgresql-Sample-docker
