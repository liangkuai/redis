# smove

> 可用版本：>= 1.0.0

将 member 从 source set key 移动到 destination set key。

### 语法

```
smove source destination member
```

### 返回值

1/0

```
127.0.0.1:6379> sadd myset "a" "b" "c"
(integer) 3

127.0.0.1:6379> sadd myset2 "b" "c" "d"
(integer) 3

127.0.0.1:6379> smove myset myset2 "a"
(integer) 1
```


### 参考

- [SMOVE - 官方](https://redis.io/commands/smove)
- [SMOVE - redis.cn](http://www.redis.cn/commands/smove.html)