 #!/bin/bash

mkdir -p config

declare -a arr=("dokuwiki")

for i in "${arr[@]}"
do
  CONTAINER_NAME=$i
  OLD="$(docker ps --all --quiet --filter=name="$CONTAINER_NAME")"
  if [ -n "$OLD" ]; then
  echo "Stop and clean $CONTAINER_NAME container ..."
  docker stop $OLD && docker rm $OLD
  fi
done

echo "docker-compose build and up ..."
docker-compose build
docker-compose up -d