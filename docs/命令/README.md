# 常用命令

### 通用

- type
- expire
- exists
- del


### String

- [set](./String/set.md#set)
- [getset](./String/set.md#getset)
- [mset](./String/set.md#mset)
- [msetnx](./String/set.md#msetnx)
- setrange
- [get](./String/get.md#get)
- [mget](./String/get.md#mget)
- getrange
- [append](./String/append.md)
- strlen
- stralgo

> #### number
>
> - [incr](./String/number/incr.md#incr)
> - [incrby](./String/number/incr.md#incrby)
> - [incrbyfloat](./String/number/incr.md#incrbyfloat)
> - decr
> - decrby

> #### bit
>
> - [setbit](./String/bit/setbit.md)
> - [getbit](./String/bit/getbit.md)
> - [bitcount](./String/bit/bitcount.md)
> - [bitop](./String/bit/bitop.md)
> - [bitpos](./String/bit/bitpos.md)
> - bitfield


### List

- lpush
- rpush
- lpushx
- rpushx
- lpop
- rpop
- lrange
- lindex
- rpoplpush
- lrem
- llen
- ltrim
- linsert
- lset


### Hash

- [hset / hsetnx / ~~hmset~~](./hash/hset.md)
- [hget / hmget / hgetall / hvals / hkeys](./hash/hget.md)
- [hlen](./hash/hlen_hexists_hkeys.md)
- [hexists](./hash/hlen_hexists_hkeys.md)
- [hdel](./hash/hdel.md)
- [hincrby](./hash/hincrby_hincrbyfloat.md)
- [hincrbyfloat](./hash/hincrby_hincrbyfloat.md)
- hstrlen
- hscan


### Set

- [sadd](./Set/sadd.md)
- [sunion](./Set/sunion_sunionstore.md)
- [sunionstore](./Set/sunion_sunionstore.md)
- [sinter](./Set/sinter_sinterstore.md)
- [sinterstore](./Set/sinter_sinterstore.md)
- [sdiff](./Set/sdiff_sdiffstore.md)
- [sdiffstore](./Set/sdiff_sdiffstore.md)
- [scard](./Set/scard_smembers_sismember_srandmember.md)
- [smembers](./Set/scard_smembers_sismember_srandmember.md)
- [sismember](./Set/scard_smembers_sismember_srandmember.md)
- [srandmember](./Set/scard_smembers_sismember_srandmember.md)
- sscan
- [smove](./Set/smove.md)
- [srem](./Set/srem_spop.md)
- [spop](./Set/srem_spop.md)


### 持久化

- bgsave
- lastsave
- save
- bgrewriteaof
