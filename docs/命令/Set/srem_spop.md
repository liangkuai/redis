# srem

## srem

> 可用版本：>= 1.0.0

从 set key 中删除一个或多个成员。

### 语法

```bash
srem key member [member ...]
```

### 返回值

删除的元素个数（不存在的不算）

```bash
127.0.0.1:6379> sadd myset "a" "b" "c"
(integer) 3

127.0.0.1:6379> srem myset "a"
(integer) 1
```

### 参考

- [SREM - 官方](https://redis.io/commands/srem)
- [SREM - redis.cn](http://www.redis.cn/commands/srem.html)


## spop

> 可用版本：>= 1.0.0

从 set key 中随机删除并返回一个或多个成员。

### 语法

```bash
spop key [count]
```

### 返回值

被删除的元素，当 key 不存在时返回 `nil。`

```bash
127.0.0.1:6379> sadd myset "a" "b" "c"
(integer) 3

127.0.0.1:6379> spop myset 2
1) "a"
2) "c"
```

### 参考

- [SPOP - 官方](https://redis.io/commands/spop)
- [SPOP - redis.cn](http://www.redis.cn/commands/spop.html)