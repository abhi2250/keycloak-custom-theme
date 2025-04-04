# Keycloak Setup

This repository contains a Docker Compose setup for running Keycloak with PostgreSQL.

## Prerequisites

- Docker
- Docker Compose

## Configuration

The setup includes:
- Keycloak server
- PostgreSQL database

### Environment Variables

Keycloak is configured with the following default credentials:
- Admin username: admin
- Admin password: admin

PostgreSQL is configured with:
- Database: keycloak
- Username: keycloak
- Password: password

## Running the Setup

1. Clone this repository
2. Run the following command: docker-compose up -d
3. Access Keycloak at: http://localhost:8080

## Ports

- Keycloak: 8080
- PostgreSQL: 5432

## Volumes

PostgreSQL data is persisted in a Docker volume named `postgres_data`.
