#!/bin/bash

docker run \
  --name=webrtc \
  -d \
  --restart unless-stopped \
  --network internal-nw \
  --ip 172.18.0.9 \
  mpromonet/webrtc-streamer -n cam01 -u "rtsp://192.168.1.18:554/user=admin&password=&channel=1&stream=1.sdp?real_stream"

