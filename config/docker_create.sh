#!/bin/bash

# 本地使用的 Redis 实例
docker container run \
    --name redis_local \
    -p 6379:6379 \
    -v /private/var/lib/redis/data:/data \
    -d redis:5.0.5 
