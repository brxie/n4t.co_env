#!/bin/bash

# elFinder
docker run --restart unless-stopped \
	--name elFinderPublic \
	-d --network="internal-nw" \
        -p 7001:80 \
        -e PGID=1000 \
        -e PUID=1000 \
        --ip 172.18.0.10 \
        -v /data/public:/data \
        -v $(pwd)/connector.minimal.php:/var/www/php/connector.minimal.php \
        leadz/elfinder

# workaround of permission issue during downloading files
docker exec -it elFinderPublic chmod -R 755 /var/tmp/nginx
