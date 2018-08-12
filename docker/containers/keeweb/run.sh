#!/bin/bash

docker run \
  --name=keeweb \
  -d \
  --restart unless-stopped \
  --network internal-nw \
  --ip 172.18.0.7 \
  viossat/keeweb
