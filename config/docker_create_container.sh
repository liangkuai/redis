#!/bin/bash
#
# 创建一个本地使用的 Redis 容器
#
# 1. redis 5.0.5
# 2. 将本地目录：/private/var/lib/redis/data 挂载到容器目录：/data

docker container run \
    --name redis_local \
    -p 6379:6379 \
    -v /private/var/lib/redis/data:/data \
    -d redis:5.0.5


# 如果需要容器使用自己的配置文件，可以将挂载到容器中
#
# docker container run \
#     --name redis_local \
#     -p 6379:6379 \
#     -v /private/var/lib/redis/data:/data,/my-redis.conf:/usr/local/etc/redis/redis.conf \
#     -d redis:5.0.5