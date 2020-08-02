# scard/smembers/sismember/srandmember

## scard

> 可用版本：>= 1.0.0

返回集合成员数量。

### 语法

```bash
scard key
```

### 返回值

集合成员数量

```bash
127.0.0.1:6379> sadd myset "a" "b" "c"
(integer) 3

127.0.0.1:6379> scard myset
(integer) 3
```

### 参考

- [SCARD - 官方](https://redis.io/commands/scard)
- [SCARD - redis.cn](http://www.redis.cn/commands/scard.html)


## smembers

> 可用版本：>= 1.0.0

返回集合所有成员。

### 语法

```bash
smembers key
```

### 返回值

数组，集合所有成员

```bash
127.0.0.1:6379> sadd myset "a" "b" "c"
(integer) 3

127.0.0.1:6379> smembers myset
1) "a"
2) "b"
3) "c"
```

### 参考

- [SMEMBERS - 官方](https://redis.io/commands/smembers)
- [SMEMBERS - redis.cn](http://www.redis.cn/commands/smembers.html)


## sismember

> 可用版本：>= 1.0.0

返回 member 是否是集合的成员。

### 语法

```bash
sismember key member
```

### 返回值

- 1：是成员
- 0：不是，或者 key 不存在

```bash
127.0.0.1:6379> sadd myset "a" "b" "c"
(integer) 3

127.0.0.1:6379> sismember myset "a"
```

### 参考

- [SISMEMBER - 官方](https://redis.io/commands/sismember)
- [SISMEMBER - redis.cn](http://www.redis.cn/commands/sismember.html)



## srandmember

> 可用版本：>= 1.0.0

从 set key 中随机返回一个或多个成员。

### 语法

```bash
srandmember key [count]
```

### 返回值

- 没有 count 参数，随机返回成员，如果 key 不存在就返回 `nil`。
- 有 count 参数，返回一个数组，如果 key 不存在就返回一个空数组。

```bash
127.0.0.1:6379> sadd myset "a" "b" "c"
(integer) 3

127.0.0.1:6379> srandmember myset 3
1) "a"
1) "c"
1) "d"
```

### 参考

- [SRANDMEMBER - 官方](https://redis.io/commands/srandmember)
- [SRANDMEMBER - redis.cn](http://www.redis.cn/commands/srandmember.html)