#!/bin/sh

gotify_url='http://gotify.host'
token='AWddff4d3evAkxMr'
age='72h' # e.g. (10m, 1h30m)

gotify_message() {
    curl "$gotify_url/message?token=$token" \
        -F "message=$1" -F "title=Docker pruner"
}

docker system prune --force --all --filter until=$age
docker volume prune --force
gotify_message "🔔  Docker was pruned everything older than $age and unused volumes!"