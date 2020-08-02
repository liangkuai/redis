# 常用命令

### 通用

- type
- expire
- exists
- del


### string

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


### list

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


### hash

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


### 持久化

- bgsave
- lastsave
- save
- bgrewriteaof
