# bitcount

> 可用版本：>= 2.6.0

对于 string key，统计被设置为 1 的 bit 数。可以用指定统计范围。

### 语法

```
bitcount key [start end]
```

### 返回值

返回被设置为 1 的 bit 数。

```
127.0.0.1:6379> bitcount bitmap 1 30
(integer) 2
```


### 参考

- [BITCOUNT - 官方](https://redis.io/commands/bitcount)
- [BITCOUNT - redis.cn](http://www.redis.cn/commands/bitcount.html)