FROM quay.io/keycloak/keycloak:latest

# Set environment variables for Keycloak
ENV KC_HEALTH_ENABLED=true
ENV KC_METRICS_ENABLED=true
ENV KC_DB=postgres

# Copy the custom theme into the Keycloak themes directory
COPY ./sail /opt/keycloak/themes/sail

# Build the Keycloak instance
RUN /opt/keycloak/bin/kc.sh build

# Set the default theme (optional)
ENV KC_THEME=sail

ENTRYPOINT ["/opt/keycloak/bin/kc.sh"]
