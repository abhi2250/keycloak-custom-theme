Keycloak setup:

1. Download the Keycloak ZIP distribution
2. Navigate to cd /path/to/keycloak-<version>
3. Locate kc.sh file -> ls bin/kc.sh
4. Execute kc.sh file -> bin/kc.sh start-dev
    1. Note: Ensure that the kc.sh script has execute permissions. If not, you can set them with -> 
        1. chmod +x bin/kc.sh

You need java for running the keycloak
1. brew install openjdk
2. Link java: sudo ln -sfn $(brew --prefix openjdk)/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk.jdk


Docker:

1. docker build -t keycloak-custom .
2. docker-compose up
