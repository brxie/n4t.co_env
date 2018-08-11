#!/bin/bash

docker run  --name=transmission  -d --restart unless-stopped  --network internal-nw  -v /etc/transmission/config:/config  -v /data/transmission:/downloads -e PGID=1000 -e PUID=1000 --ip 172.18.0.5 -p 9091:9091 -p 51413:51413 -p "51413:51413/udp"  linuxserver/transmission:136
