# hincrby/hincrbyfloat

## hincrby

> 可用版本：>= 2.0.0

对 hash key，给指定的整数字段加上指定的整数值。

### 语法

```bash
hincrby key field increment
```

### 返回值

增加后的值

```bash
127.0.0.1:6379> hset myhash f1 "hello" f2 5
(integer) 2

127.0.0.1:6379> hincrby myhash f2 2
(integer) 7
```

### 参考
- [HINCRBY - 官方](https://redis.io/commands/hincrby)
- [HINCRBY - redis.cn](http://www.redis.cn/commands/hincrby.html)


## hincrbyfloat

> 可用版本：>= 2.6.0

对 hash key，给指定的浮点数字段加上指定的数值。

### 语法

```bash
hincrbyfloat key field increment
```

### 返回值

增加后的值

```bash
127.0.0.1:6379> hset myhash f1 "hello" f2 5.0
(integer) 2

127.0.0.1:6379> hincrbyfloat myhash f2 2.1
(integer) 7.1
```

### 参考
- [HINCRBYFLOAT - 官方](https://redis.io/commands/hincrbyfloat)
- [HINCRBYFLOAT - redis.cn](http://www.redis.cn/commands/hincrbyfloat.html)