#!/bin/bash
sh ${UNIVERSE_PATH}scripts/build.sh
${UNIVERSE_PATH}docker/server/build.bash
DOCKER_IMAGE="kloudoop/universe-server" DOCKER_TAG="0.0.1" ${UNIVERSE_PATH}docker/server/build.bash
docker run --name universe -dit -p 8080:80 kloudoop/universe-server:0.0.1
