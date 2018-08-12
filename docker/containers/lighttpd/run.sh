#!/bin/bash

docker run --network internal-nw --ip 172.18.0.2 --restart unless-stopped --name lighttpd -d -v $(pwd)/config:/etc/lighttpd -p 443:443 -p 80:80  sebp/lighttpd

