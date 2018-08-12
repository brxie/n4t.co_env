#!/bin/bash

# elFinder
docker run --restart unless-stopped \
	--name elFinder \
	-d --network="internal-nw" \
        -p 7000:80 \
        -e PGID=1000 \
        -e PUID=1000 \
        --ip 172.18.0.8 \
        -v /data:/data \
        -v $(pwd)/connector.minimal.php:/var/www/php/connector.minimal.php \
        leadz/elfinder

# workaround of permission issue during downloading files
docker exec -it elFinder chmod -R 755 /var/tmp/nginx
