#!/bin/bash

# build/start the container
docker-compose up -d

# chown the shared mounted volumes
docker exec drogon-app chown -R $(id -u) /usr/app

# create some tools
alias dracaris='docker exec drogon-app'
alias drogon='docker exec -u $(id -u) drogon-app'
alias drogon-console='docker exec -it drogon-app rails console'
# alias drogon-log='docker exec drogon-app tail -f /usr/app/src/log/*.log'
