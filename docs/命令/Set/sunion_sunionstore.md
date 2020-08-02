# sunion/sunionstore

## sunion

> 可用版本：>= 1.0.0

给定多个 set key，返回并集中的所有成员。不存在的 key 当做空集。

### 语法

```bash
sunion key [key ...]
```

### 返回值

数组，并集的所有成员

```bash
127.0.0.1:6379> sadd myset "a" "b" "c"
(integer) 3

127.0.0.1:6379> sadd myset2 "b" "c" "d"
(integer) 3

127.0.0.1:6379> sunion myset myset2
1) "a"
2) "b"
3) "c"
4) "d"
```

### 参考

- [SUNION - 官方](https://redis.io/commands/sunion)
- [SUNION - redis.cn](http://www.redis.cn/commands/sunion.html)



## sunionstore

> 可用版本：>= 1.0.0

给定多个 set key，求并集并存储到指定 key 中（如果 key 已存在就覆盖）。

### 语法

```bash
sunionstore destination key [key ...]
```

### 返回值

目标集合的元素个数

```bash
127.0.0.1:6379> sadd myset "a" "b" "c"
(integer) 3

127.0.0.1:6379> sadd myset2 "b" "c" "d"
(integer) 3

127.0.0.1:6379> sunionstore myset3 myset myset2
(integer) 4
```

### 参考

- [SUNIONSTORE - 官方](https://redis.io/commands/sunionstore)
- [SUNIONSTORE - redis.cn](http://www.redis.cn/commands/sunionstore.html)