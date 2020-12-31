# hget/hmget/hgetall/hkeys/hvals/hkeys

## hget

> 可用版本：>= 2.0.0

返回 hash key 中指定字段值。

### 语法

```bash
hget key field
```

### 返回值

字段值。如果 key 不存在或者字段不存在时返回 `nil`。

```bash
127.0.0.1:6379> hset myhash f1 "hello"
(integer) 1

127.0.0.1:6379> hget myhash f1
"hello"

127.0.0.1:6379> hget myhash f2
(nil)
```

### 参考
- [HGET - 官方](https://redis.io/commands/hget)
- [HGET - redis.cn](http://www.redis.cn/commands/hget.html)


## hmget

> 可用版本：>= 2.0.0

返回 hash key 中多个字段值。

### 语法

```bash
hmget key field [field ...]
```

### 返回值

字段值数组
- 如果 key 不存在，返回 `nil` 数组。
- 如果字段不存在，数组对应位置返回 `nil`。

```bash
127.0.0.1:6379> hset myhash f1 "hello" f2 5
(integer) 2

127.0.0.1:6379> hmget myhash f1 f2
1) "Hello"
2) 5
3) (nil)
```

### 参考
- [HMGET - 官方](https://redis.io/commands/hmget)
- [HMGET - redis.cn](http://www.redis.cn/commands/hmget.html)


## hgetall

> 可用版本：>= 2.0.0

返回 hash key 中所有字段和值。

### 语法

```bash
hgetall key
```

### 返回值

字段和值组成的数组。如果 key 不存在，空数组。

```bash
127.0.0.1:6379> hset myhash f1 "hello" f2 5
(integer) 2

127.0.0.1:6379> hgetall myhash
1) "f1"
2) "Hello"
3) "f2"
4) "5"
```

### 参考
- [HGETALL - 官方](https://redis.io/commands/hgetall)
- [HGETALL - redis.cn](http://www.redis.cn/commands/hgetall.html)


## hvals

> 可用版本：>= 2.0.0

返回 hash key 中所有字段值。

### 语法

```bash
hvals key
```

### 返回值

字段值数组。如果 key 不存在，返回空数组。

```bash
127.0.0.1:6379> hset myhash f1 "hello" f2 5
(integer) 2

127.0.0.1:6379> hvals myhash
1) "Hello"
2) "5"
```

### 参考
- [HVALS - 官方](https://redis.io/commands/hvals)
- [HVALS - redis.cn](http://www.redis.cn/commands/hvals.html)


## hkeys

> 可用版本：>= 2.0.0

返回 hash key 中所有字段。

### 语法

```bash
hkeys key
```

### 返回值

字段数组。如果 key 不存在，返回空数组。

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


## hlen

> 可用版本：>= 2.0.0

返回 hash key 中的字段数量。

### 语法

```bash
hlen key
```

### 返回值

字段数。如果 key 不存在，返回 0。

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
