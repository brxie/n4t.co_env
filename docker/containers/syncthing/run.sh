#!/bin/bash

docker run \
  --name=syncthing \
  -d \
  --restart unless-stopped \
  --network internal-nw \
  -v /etc/syncthing/config:/config \
  -v /data/syncthing:/data \
  -e PGID=1000 -e PUID=1000  \
  -e UMASK_SET=022 \
  --ip 172.18.0.4 \
  -p 8384:8384 -p 22000:22000 -p 21027:21027/udp \
  linuxserver/syncthing:129
