# Keycloak Setup

This repository contains a Docker Compose setup for running Keycloak with PostgreSQL and a custom Sail theme.

## Prerequisites

- Docker
- Docker Compose

## Configuration

The setup includes:
- Keycloak server
- PostgreSQL database
- Custom Sail theme

### Environment Variables

Keycloak is configured with the following default credentials:
- Admin username: admin
- Admin password: admin

PostgreSQL is configured with:
- Database: keycloak
- Username: keycloak
- Password: password

### Custom Theme

The setup includes a custom Sail theme located in the `sail` directory. This theme is automatically mounted to the Keycloak container and can be selected in the Keycloak admin console.

## Running the Setup

1. Clone this repository
2. Build docker image locally: docker build -t keycloak-custom .
3. Run the following command: docker-compose up -d
4. Access Keycloak at: http://localhost:8080
5. Log in to the admin console and select the Sail theme for your realm

## Ports

- Keycloak: 8080
- PostgreSQL: 5432

## Volumes

- PostgreSQL data is persisted in a Docker volume named `postgres_data`
- Custom theme is mounted from the local `sail` directory

## Screenshot

![Alt text](/login_screenshot.png?raw=true "Login")
