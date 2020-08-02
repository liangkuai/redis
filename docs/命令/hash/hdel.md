# hdel

> 可用版本：>= 2.0.0

删除 hash key 中的字段。

### 语法

```bash
hdel key field [field ...]
```

### 返回值

删除字段数

```bash
127.0.0.1:6379> hset myhash f1 "hello" f2 5
(integer) 2

127.0.0.1:6379> hdel myhash f2
(integer) 1
```


### 参考

- [HDEL - 官方](https://redis.io/commands/hdel)
- [HDEL - redis.cn](http://www.redis.cn/commands/hdel.html)