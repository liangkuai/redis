# sdiff/sdiffstore

## sdiff

> 可用版本：>= 1.0.0

给定多个 set key，返回差集中的所有成员。不存在的 key 当做空集。

### 语法

```bash
sdiff key [key ...]
```

```
key1 = {a,b,c,d}
key2 = {c}
key3 = {a,c,e}
SDIFF key1 key2 key3 = {b,d}
```

### 返回值

数组，差集的所有成员

```bash
127.0.0.1:6379> sadd myset "a" "b" "c"
(integer) 3

127.0.0.1:6379> sadd myset2 "b" "c" "d"
(integer) 3

127.0.0.1:6379> sinter myset myset2
1) "a"
```

### 参考

- [SDIFF - 官方](https://redis.io/commands/sdiff)
- [SDIFF - redis.cn](http://www.redis.cn/commands/sdiff.html)



## sdiffstore

> 可用版本：>= 1.0.0

给定多个 set key，求差集并存储到指定 key 中（如果 key 已存在就覆盖）。

### 语法

```bash
sdiffstore destination key [key ...]
```

### 返回值

数组，差集的所有成员

```bash
127.0.0.1:6379> sadd myset "a" "b" "c"
(integer) 3

127.0.0.1:6379> sadd myset2 "b" "c" "d"
(integer) 3

127.0.0.1:6379> sinter myset myset2
(integer)1
```

### 参考

- [SDIFFSTORE - 官方](https://redis.io/commands/sdiffstore)
- [SDIFFSTORE - redis.cn](http://www.redis.cn/commands/sdiffstore.html)