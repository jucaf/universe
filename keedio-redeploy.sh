rm -rf target
sh scripts/build.sh
docker/server/build.bash
docker stop $(docker ps -a -q)
DOCKER_IMAGE="kloudoop/universe-server" DOCKER_TAG="0.0.1" docker/server/build.bash
docker run -dit -p 8080:80 kloudoop/universe-server:0.0.1