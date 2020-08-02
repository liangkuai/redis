# sinter/sinterstore

## sinter

> 可用版本：>= 1.0.0

给定多个 set key，返回交集中的所有成员。不存在的 key 当做空集。

### 语法

```bash
sinter key [key ...]
```

### 返回值

数组，交集的所有成员

```bash
127.0.0.1:6379> sadd myset "a" "b" "c"
(integer) 3

127.0.0.1:6379> sadd myset2 "b" "c" "d"
(integer) 3

127.0.0.1:6379> sinter myset myset2
1) "b"
2) "c"
```

### 参考

- [SINTER - 官方](https://redis.io/commands/sinter)
- [SINTER - redis.cn](http://www.redis.cn/commands/sinter.html)



## sinterstore

> 可用版本：>= 1.0.0

给定多个 set key，求交集并存储到指定 key 中（如果 key 已存在就覆盖）。

### 语法

```bash
sinterstores destination key [key ...]
```

### 返回值

目标集合的元素个数

```bash
127.0.0.1:6379> sadd myset "a" "b" "c"
(integer) 3

127.0.0.1:6379> sadd myset2 "b" "c" "d"
(integer) 3

127.0.0.1:6379> sinterstore myset3 myset myset2
(integer) 2
```

### 参考

- [SINTERSTORE - 官方](https://redis.io/commands/sinterstore)
- [SINTERSTORE - redis.cn](http://www.redis.cn/commands/sinterstore.html)