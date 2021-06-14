#!/bin/sh

expect -c "set timeout 60; spawn docker-compose run -T import; expect \"Http management interface listening on\" { close }"
expect -c "set timeout 60; spawn docker-compose run -T export; expect \"Http management interface listening on\" { close }"

docker-compose down -v
