# hset/hsetnx/hmset

## hset

> 可用版本：>= 2.0.0

指定 hash key，设置一个或多个字段和值。

- key 不存在，先创建新的 key。
- 如果字段已存在，覆盖值。

Redis 4.0.0 开始可以设置多个，用来代替 `hmset` 命令。

### 语法

```bash
hset key field value [field value ...]
```

### 返回值

新增的字段数（覆盖不算）。

```bash
127.0.0.1:6379> hset myhash f1 "hello" f2 5
(integer) 2
```

### 参考
- [HSET - 官方](https://redis.io/commands/hset)
- [HSET - redis.cn](http://www.redis.cn/commands/hset.html)


## hsetnx

> 可用版本：>= 2.0.0

指定 hash key，设置一个字段和值。如果字段已存在，不进行操作。

### 语法

```bash
hsetnx key field value
```

### 返回值

- 1：新字段并设置成功
- 0：字段已存在，不进行操作

```bash
127.0.0.1:6379> hset myhash f1 "hello" f2 5
(integer) 2

127.0.0.1:6379> hsetnx myhash f1 "world"
(integer) 0
```

### 参考
- [HSETNX - 官方](https://redis.io/commands/hsetnx)
- [HSETNX - redis.cn](http://www.redis.cn/commands/hsetnx.html)



## ~~hmset~~

Redis 4.0.0 开始，`hmset` 已弃用，参考 [`hset`](#hset)。