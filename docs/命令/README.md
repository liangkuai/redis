# 常用命令

### 通用

- type
- expire
- exists
- del


### String

- [set](./string/set.md)
- get
- mset
- msetnx
- mget
- getset
- getrange
- setrange
- strlen
- append

> #### number
>
> - incr
> - decr
> - incrby
> - decrby
> - incrbyfloat

> #### bit
>
> - [setbit](./string/bit/setbit.md)
> - [getbit](./string/bit/getbit.md)
> - [bitcount](./string/bit/bitcount.md)
> - [bitop](./string/bit/bitop.md)
> - [bitpos](./string/bit/bitpos.md)
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

- [hset](./hash/hset_hsetnx.md)
- [hsetnx](./hash/hset_hsetnx.md)
- [hget](./hash/hget_hmget_hgetall_hvals.md)
- [hmget](./hash/hget_hmget_hgetall_hvals.md)
- [hgetall](./hash/hget_hmget_hgetall_hvals.md)
- [hvals](./hash/hget_hmget_hgetall_hvals.md)
- [hlen](./hash/hlen_hexists_hkeys.md)
- [hexists](./hash/hlen_hexists_hkeys.md)
- [hkeys](./hash/hlen_hexists_hkeys.md)
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
