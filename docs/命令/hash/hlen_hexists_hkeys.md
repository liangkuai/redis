# hlen/hexists/hkeys

## klen

> 可用版本：>= 2.0.0

返回 hash key 中字段数量。

### 语法

```bash
hlen key
```

### 返回值

字段数组。如果 key 不存在，返回 0。

```bash
127.0.0.1:6379> hset myhash f1 "hello" f2 5
(integer) 2

127.0.0.1:6379> hlen myhash
(integer) 2
```

### 参考

- [HLEN - 官方](https://redis.io/commands/hlen)
- [HLEN - redis.cn](http://www.redis.cn/commands/hlen.html)


## hexists

> 可用版本：>= 2.0.0

返回 hash key 中是否存在指定字段。


### 语法

```bash
hexists key field
```

### 返回值

- 1：存在
- 0：key 不存在或字段不存在

```bash
127.0.0.1:6379> hset myhash f1 "hello" f2 5
(integer) 2

127.0.0.1:6379> hexists myhash f1
(integer) 1
```


### 参考

- [HEXISTS - 官方](https://redis.io/commands/hexists)
- [HEXISTS - redis.cn](http://www.redis.cn/commands/hexists.html)


## hkeys

> 可用版本：>= 2.0.0

返回 hash key 中所有字段。


### 语法

```bash
hkeys key
```

### 返回值

字段数组。如果 key 不存在，空数组。

```bash
127.0.0.1:6379> hset myhash f1 "hello" f2 5
(integer) 2

127.0.0.1:6379> hkeys myhash
1) "f1"
2) "f2"
```


### 参考

- [HKEYS - 官方](https://redis.io/commands/hkeys)
- [HKEYS - redis.cn](http://www.redis.cn/commands/hkeys.html)