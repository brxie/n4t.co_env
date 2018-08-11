#!/bin/bash

docker run -d --restart unless-stopped --name ubuntu -p 2222:22 ubuntu:18.04 tail -f /dev/null
